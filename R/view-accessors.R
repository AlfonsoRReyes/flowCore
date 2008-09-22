## ==========================================================================
## Objects of class view provide wrappers for the results of common flow
## operations in order to organize them in a workflow. There are three
## subclasses: gateView, transformView and compensateView.
## ==========================================================================






## ==========================================================================
## Accessor to action slot. This returns the actionItem object after
## resolving the reference
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
setMethod("action",
          signature=signature(object="view"),
          definition=function(object) get(object@action))



## ==========================================================================
## Accessor to data slot. This returns the flow data object (flowFrame or
## flowSet) after resolving the reference
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
setMethod("Data",
          signature=signature(object="view"),
          definition=function(object) get(object@data))




## ==========================================================================
## Accessor to parent, linked by an actionItem returns. This the view object
## after resolving the reference
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
setMethod("parent",
          signature=signature(object="view"),
          definition=function(object) parent(action(object)))

setMethod("parent",
          signature=signature(object="NULL"),
          definition=function(object) NULL)




## Return names of all views that are generated by a common actionItem
relatedViews <- function(view, wf)
{
    curView <- identifier(view)  
    curAction <- identifier(view@action)
    aiMatch <- sapply(edgeData(get(wf@tree), attr="actionItem"), identifier)
    gsub(".*\\|", "", names(aiMatch[aiMatch == curAction]))
}



## ==========================================================================
## Remove a view object from a workFlow. This will traverse down the tree
## and also remove all dependent objects to free their memory.
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## For all views, we need to traverse all downstream actionItems and remove
## them. We also remove the associated data.
setMethod("Rm",
          signature=signature(symbol="view",
                              envir="workFlow",
                              subSymbol="character"),
          definition=function(symbol, envir, subSymbol, rmRef=TRUE)
      {
          curView <- identifier(symbol)
          depAction <- unique(sapply(edgeData(get(envir@tree), from=curView,
                                              attr="actionItem"),
                                     identifier))
          if(length(depAction))
              lapply(mget(depAction, envir), Rm, envir)
          Rm(symbol@data)
          if(!length(relatedViews(symbol, envir)))
              Rm(symbol@action)
          assign(x=envir@tree, value=removeNode(curView, get(envir@tree)),
                 envir=envir)
          return(invisible(NULL))
      })

## For gateViews we also have to remove the filterResult
setMethod("Rm",
          signature=signature(symbol="gateView",
                              envir="workFlow",
                              subSymbol="character"),
          definition=function(symbol, envir, subSymbol, rmRef=TRUE)
      {
          selectMethod("Rm", signature("view", "workFlow", "character"))(symbol, envir)
          if(!length(relatedViews(symbol, envir)))
              Rm(symbol@filterResult)
          rm(list=identifier(symbol), envir=envir@env)
          return(invisible(NULL))
      })

## For transformViews we just need to remove the view itself
setMethod("Rm",
          signature=signature(symbol="transformView",
                              envir="workFlow",
                              subSymbol="character"),
          definition=function(symbol, envir, subSymbol, rmRef=TRUE)
      {
          selectMethod("Rm", signature("view", "workFlow", "character"))(symbol, envir)
          rm(list=identifier(symbol), envir=envir@env)
          return(invisible(NULL))
      })


## For compensateViews we just need to remove the view itself
setMethod("Rm",
          signature=signature(symbol="compensateView",
                              envir="workFlow",
                              subSymbol="character"),
          definition=function(symbol, envir, subSymbol, rmRef=TRUE)
      {
          selectMethod("Rm", signature("view", "workFlow", "character"))(symbol, envir)
          rm(list=identifier(symbol), envir=envir@env)
          return(invisible(NULL))
      })