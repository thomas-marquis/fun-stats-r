# DEPENDENCIES
install.packages("prettyR")
library(prettyR)


# CONSTANTS
dataPath <- "./data/satisfaction_hopital.csv"

sexe_levels <- c(0, 1)
sexe_labels <- c("homme", "femme")

prof_levels <- 1:8
prof_labels <- c("agriculteur", "artisant, commercant, chef d'entreprise", "cadre", "prof intermédiaire", "employé", "ouvrier", "étudiant, militaire, chômeur", "autre")

describe.settings <- c("mean", "median" ,"sd" , "min", "max", "valid.n")


# DATA IMPORTS AND PREPROCESSING
brutData <- read.csv2(dataPath, sep = ";")
data <- brutData

data$sexe <- factor(brutData$sexe, levels = sexe_levels, labels = sexe_labels)
data$profession <- factor(brutData$profession, levels = prof_levels, labels = prof_labels)
data$service <- factor(brutData$service)


# QUESTION 1
prop.sexe <- round(prop.table(table(data$sexe)), 3) * 100
prop.service <- round(prop.table(table(data$service)), 3) * 100
prop.profession <- round(prop.table(table(data$profession)), 3) * 100


# QUESTION 2
desc.age <- describe(data$age, num.desc = describe.settings)
desc.amelioration.sante <- describe(data$amelioration.sante, num.desc = describe.settings)
desc.amelioration.moral <- describe(data$amelioration.moral, num.desc = describe.settings)
desc.recommander <- describe(data$recommander, num.desc = describe.settings)
desc.score.relation <- describe(data$score.relation, num.desc = describe.settings)
desc.score.information <- describe(data$score.information, num.desc = describe.settings)


# QUESTION 3
hist(data$score.relation, col = "cornflowerblue", xlab = "score relation")


# QUESTION 4
boxplot(subset(data, sexe == "femme"), data = data,
        xlab = "sexe", ylab = "Nombre",
        col = "cornflowerblue", border = "cornflowerblue")


