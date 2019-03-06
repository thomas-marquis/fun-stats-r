smpPath <- "./data/smp2.csv"

smp <- read.csv2(smpPath)

agMin <- min(smp$age, na.rm = TRUE)

modAbus <- unique(smp$abus)
efAbus <- table(smp$abus, useNA = "always")

factAbus <- factor(smp$abus, levels = c(0, 1), labels = c("Non", "Oui"))
