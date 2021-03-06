\name{filter-in-methods}
\docType{methods}
\alias{\%in\%-methods}
\alias{\%in\%}
\alias{\%in\%,ANY,filterResult-method}
\alias{\%in\%,ANY,multipleFilterResult-method}
\alias{\%in\%,ANY,manyFilterResult-method}
\alias{\%in\%,ANY,filterReference-method}
\alias{\%in\%,flowFrame,rectangleGate-method}
\alias{\%in\%,flowFrame,polygonGate-method}
\alias{\%in\%,flowFrame,ellipsoidGate-method}
\alias{\%in\%,flowFrame,norm2Filter-method}
\alias{\%in\%,flowFrame,unionFilter-method}
\alias{\%in\%,flowFrame,intersectFilter-method}
\alias{\%in\%,flowFrame,complementFilter-method}
\alias{\%in\%,flowFrame,subsetFilter-method}
\alias{\%in\%,flowFrame,filterResult-method}
\alias{\%in\%,flowFrame,kmeansFilter-method}
\alias{\%in\%,flowFrame,sampleFilter-method}
\alias{\%in\%,flowFrame,transformFilter-method}
\alias{\%in\%,flowFrame,expressionFilter-method}
\alias{\%in\%,flowFrame,quadGate-method}
\alias{\%in\%,flowFrame,timeFilter-method}
\alias{\%in\%,flowFrame,boundaryFilter-method}
\alias{\%in\%,flowFrame,polytopeGate-method}

\title{Filter-specific membership methods}

\description{
  
Membership methods must be defined for every object of type
\code{filter} with respect to a \code{flowFrame} object.  The operation
is considered to be general and may return a \code{logical},
\code{numeric} or \code{factor} vector that will be handled
appropriately. The ability to handle logical matrices as well as vectors
is also planned but not yet implemented.

}



\author{F.Hahne, B. Ellis}

\keyword{methods}
