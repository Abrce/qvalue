\name{hedenfalk}
\alias{hedenfalk}

\title{Gene expression dataset from Hedenfalk et al. (2001)}

\usage{
data(hedenfalk)
}

\description{
  The data come from the breast cancer cDNA microarray experiment of Hedenfalk et al. (2001).  In 
  the original experiment, comparison was made between 3,226 genes of two mutation types, BRCA1 
  (7 arrays) and BRCA2 (8 arrays).  The data included here are p-values obtained from a two-
  sample t-test analysis on a subset of 3,170 genes, as described in Storey and Tibshirani (2003).}

\value{
  \item{hedenfalk}{Vector of 3,170 p-values of tests comparing BRCA1 to BRCA2.}
}

\references{
Hedenfalk I et al. (2001). Gene expression profiles in hereditary breast cancer. 
New Engl. Jour. Medicine, 344: 539-548.

Storey JD and Tibshirani R. (2003). Statistical significance for genome-wide 
studies. Proceedings of the National Academy of Sciences, 100: 9440-9445.}

\keyword{datasets}  
