\name{qsummary}
\alias{qsummary}
\alias{summary.qvalue}
\title{Display qvalue object}
\description{
  Display summary information for a qvalue object.  
}
\usage{
qsummary(qobj, cuts = c(1e-04, 0.001, 0.01, 0.025, 0.05, 0.1, 1),
             digits = getOption("digits"), \ldots)
\method{summary}{qvalue}(object, \ldots)
}
\arguments{
  \item{qobj, object}{Qvalue object}
  \item{cuts}{Vector of significance value to use for table (optional)}
  \item{digits}{Significant digits to display (optional)}
  \item{\ldots}{Any other arguments}
}
\details{
  \code{qsummary} shows the original call, estimated proportion of
  true null hypotheses, and a table comparing the number of significant calls
  for the raw p-values and for the calculated q-values using a set of
  cutoffs given by \code{cuts}. 
}
\value{
  Invisibly returns the original object.
}
\author{Alan Dabney \email{adabney@u.washington.edu} and Gregory R. Warnes \email{gregory\_r\_warnes@groton.pfizer.com}}
\seealso{\code{\link{qvalue}}, \code{\link{qplot}},
  \code{\link{qwrite}}, \code{\link{qvalue.gui}}}
\examples{
\dontrun{
qobj <- qvalue(p)
print(qobj)
summary(qobj, cuts=c(0.01, 0.05))
}
}
\keyword{misc}
