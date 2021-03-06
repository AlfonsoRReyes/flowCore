\name{filters-class}
\docType{class}
\alias{filters-class}
\alias{filters}
\alias{filtersList-class}
\alias{filtersList}
\alias{show,filters-method}
\alias{show,filtersList-method}
\title{Class "filters" and "filtersList" }
\description{
The \code{filters} class is the container for a list of \code{\link[flowCore:filter-methods]{filter}} objects. 
The class mainly exists for displaying multiple filters/gates on one single panel(flowFrame) of \code{\link[flowViz:xyplot]{xyplot}}.
Note that it is different from \code{\link[flowCore:filterList]{filerList}} class which is to be applied to a flowSet.
In other words, \code{filter} objects of a \code{fliterList} are to be applied to different flowFrames.
However,all of \code{filter} objects of a \code{filters} are for one single flowFrame, more specifically for one pair of projections(parameters).So these filters should
share the common parameters.   

And \code{filtersList} is a list of \code{filters} objects,which are to be applied to a flowSet.
 
}

\section{Slots}{\describe{
\item{\code{.Data}:}{Object of class \code{"list"}. The class
      directly extends \code{list}, and this slot holds the list data.}}
  }

\section{Extends}{
Class \code{"\linkS4class{list}"}, from data part.
}

\section{Objects from the Class}{
  
  Objects are created from regular lists using the constructors 
 \code{filters} and \code{filtersList}.
}

\usage{
filters(x)
filtersList(x)
}

\arguments{

  \item{x}{ A list of \code{filter} or \code{filters} objects. }
}


\value{

  A \code{filters} or \code{filtersList} object for the constructor

}





\seealso{\code{\link[flowCore:filter-class]{filter}},
  \code{\link[flowCore:filterList-class]{filterList}}
  }   
  
\author{Mike Jiang}

\keyword{classes}
