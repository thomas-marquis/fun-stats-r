smpPath <- "./data/smp2.csv"
smp <- read.csv2(smpPath)
names(smp)
agMin <- min(smp$age, na.rm = TRUE)
modAbus <- unique(smp$abus)
efAbus <- table(smp$abus, useNA = "always")
efAbus
factAbus <- factor(smp$abus, levels = c(0, 1), lables = c("Non", "Oui"))
factAbus <- factor(smp$abus, levels = c(0, 1), labels = c("Non", "Oui"))
factAbus
head(factAbus)
smp$n.enfant.cat <- factor(smp$n.enfant)
table(smp$n.enfant.cat)
nlevels(smp$n.enfant.cat)
levels(smp$n.enfant.cat)
levels(smp$n.enfant.cat)[6:13] <- "5+"
table(smp$n.enfant.cat)
savePath <- "./outputData/smp_v1.rda"
save(smp, file = savePath)
saveHistoryPath <- "./outputData/commandes.R"
savehistory(saveHistoryPath)
