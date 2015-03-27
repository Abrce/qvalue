## ----foo,cache=FALSE,include=FALSE,echo=FALSE----
library(qvalue)
options(keep.source = TRUE, width = 48)
foo <- packageDescription("qvalue")

## ----help_qvalue------------------------------
help(package="qvalue")

## ----quick_p----------------------------------
data(hedenfalk)
pvalues <- hedenfalk$p
qobj <- qvalue(pvalues)
qvalues <- qobj$qvalues

## ----quick_stat-------------------------------
data(hedenfalk)
obs.stat <- hedenfalk$stat
null.stat <- hedenfalk$stat0
pvalues <- empPvals(stat=obs.stat, stat0=null.stat)
qobj <- qvalue(pvalues)
qvalues <- qobj$qvalues

## ----load_qvalue------------------------------
data(hedenfalk)
names(hedenfalk)

## ----pvalue_hist2, dependson=c("load_qvalue", "quick_p"),  fig.height=3, fig.width=5----
hist(hedenfalk$p, nclass=20)

## ----pvalue_histBad, dependson=c("load_qvalue", "quick_p"), echo=FALSE, fig.height=3, fig.width=5----
set.seed(478)
p2 = c(hedenfalk$p, (runif(450, min=0.7, max=1))^(0.33))
somethingsWrong = list(p=p2)
hist(somethingsWrong$p, nclass=20, main="Problematic p-values", xlab="intentionally bad simulated p-values")

## ----run_qvalue, dependson="load_qvalue"------
qobj <- qvalue(p = hedenfalk$p)

## ----summary_qvalue, dependson="run_qvalue"----
summary(qobj)

## ----outNames, dependson="run_qvalue"---------
names(qobj)

## ----pi0, dependson="run_qvalue"--------------
pi0 <- qobj$pi0

## ----lfdr, dependson="run_qvalue"-------------
lfdr <- qobj$lfdr

## ----getVals, dependson="run_qvalue"----------
pvalues <- qobj$pvalues
qvalues <- qobj$qvalues
local_FDR <- qobj$lfdr

## ----plot_qobj, dependson=c("load_qvalue", "run_qvalue"), fig.height=4----
plot(qobj)

## ----hist_qobj, dependson=c("load_qvalue", "run_qvalue"), fig.height=4----
hist(qobj)

