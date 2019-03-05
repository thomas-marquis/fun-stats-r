install.packages("gplots")
library(gplots)

install.packages("prettyR")
library(prettyR)

pathSmp1 <- "./data/smp1.csv"
pathHdrs <- "./data/outils_hdrs.csv"

smp <- read.csv2(pathSmp1)
hdrs <- read.csv2(pathHdrs)

barplot(table(smp$prof))

pie(table(smp$prof))

hist(smp$age, col="blue", main="", xlab="age")

boxplot(smp$age~smp$rs, ylab="age", xlab="recherche de sensation")

plot(jitter(smp$n.enfant), jitter(smp$age), ylab="age", xlab="nombre d'enfant")
plotmeans(smp$age~smp$n.enfant) # N'a aucun sens !

plotmeans(hdrs$HDRS~hdrs$VISIT, barcol="black", gap=0)

interaction.plot(hdrs$VISIT, hdrs$NUMERO, hdrs$HDRS, legend=FALSE, lty=1)


smpSummary <- summary(smp)

describe(smp, num.desc = c("mean", "median", "var", "sd", "min", "max", "valid.n"))

smpAgeMean <- mean(smp$age, na.rm = TRUE)
smpAgeSd <- sd(smp$age, na.rm = TRUE)
smpProf <- table(smp$prof, deparse.level = 2, useNA = "always")

