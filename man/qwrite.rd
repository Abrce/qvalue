\name{qwrite}
\alias{qwrite}
\title{Write the results of the q-value object qobj to a file}
\description{
  Write the results of the q-value object qobj to a file. 
}
\usage{
qwrite(qobj, filename = "my-qvalue-results.txt")
}
\arguments{
  \item{qobj}{Qvalue object}
  \item{filename}{Output filename (optional)}
}
\details{
  The output file lists the estimate of \eqn{\pi_0}{pi_0}, which is the
  proportion of true null hypotheses.  It also lists each p-value and
  corresponding q-value, one per line.  If an FDR significance level was 
  specified in the call to \code{\link{qvalue}}, the significance level 
  is printed below the estimate of \eqn{\pi_0}{pi_0}, and an indicator 
  of significance is included as a third column for each p-value and q-value.
}
\value{
  Nothing of interest.
}
\author{Alan Dabney and John D. Storey \email{jstorey@princeton.edu}}
\seealso{\code{\link{qvalue}}, \code{\link{qplot}}, \code{\link{qsummary}}}
\examples{
\dontrun{
p <- scan("pvalues.txt")
qobj <- qvalue(p)
qplot(qobj)
qwrite(qobj, filename="myresults.txt")
}
}
\keyword{misc}
