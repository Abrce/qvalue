\name{qplot}
\alias{qplot}
\alias{plot.qvalue}
\title{Graphical display of qvalue objects}
\description{
  Graphical display of qvalue objects
}
\usage{
qplot(qobj, rng = c(0, 0.1), \ldots)
\method{plot}{qvalue}(x, \ldots)
}
\arguments{
  \item{qobj, x}{Qvalue object}
  \item{rng}{Range of q-values to consider (optional)}
  \item{\ldots}{Any other arguments}
}
\details{
  The function qplot allows one to view several plots:
  \enumerate{
  \item The estimated \eqn{\pi_0}{pi_0} versus the tuning parameter
  \eqn{\lambda}{lambda}.
  \item The q-values versus the p-values
  \item The number of significant tests versus each q-value cutoff
  \item The number of expected false positives versus the number of
  significant tests
  }

  This function makes fours plots. The first is a plot of the
  estimate of \eqn{\pi_0}{pi_0} versus its tuning parameter
  \eqn{\lambda}{lambda}. In most cases, as \eqn{\lambda}{lambda} 
  gets larger, the bias of the estimate decreases, yet the variance 
  increases. Various methods exist for balancing this bias-variance 
  trade-off (Storey 2002, Storey & Tibshirani 2003, Storey, Taylor 
  & Siegmund 2004). Comparing your estimate of \eqn{\pi_0}{pi_0} to this 
  plot allows one to guage its quality. The remaining three plots
  show how many tests are significant, as well as how many false
  positives to expect for each q-value cut-off. A thorough discussion of
  these plots can be found in Storey & Tibshirani (2003).
  
}
\value{
  Nothing of interest.
}
\references{
  Storey JD. (2002) A direct approach to false discovery rates. Journal
  of the Royal Statistical Society, Series B, 64: 479-498.
  
  Storey JD and Tibshirani R. (2003) Statistical significance for
  genome-wide experiments. Proceedings of the National Academy of Sciences, 
  100: 9440-9445. 

  Storey JD. (2003) The positive false discovery rate: A Bayesian
  interpretation and the q-value. Annals of Statistics, 31: 2013-2035.  

  Storey JD, Taylor JE, and Siegmund D. (2004) Strong control,
  conservative point estimation, and simultaneous conservative
  consistency of false discovery rates: A unified approach. Journal of
  the Royal Statistical Society, Series B, 66: 187-205.
  
  QVALUE Manual \url{http://faculty.washington.edu/~jstorey/qvalue/manual.pdf}
}
\author{John D. Storey \email{jstorey@u.washington.edu}}
\seealso{\code{\link{qvalue}}, \code{\link{qwrite}}, \code{\link{qsummary}}, \code{\link{qvalue.gui}}}
\examples{
\dontrun{
p <- scan(pvalues.txt) 
qobj <- qvalue(p) 
qplot(qobj) 
qwrite(qobj, filename=myresults.txt)

# view plots for q-values between 0 and 0.3:
plot(qobj, rng=c(0.0, 0.3))
}
}
\keyword{misc}
