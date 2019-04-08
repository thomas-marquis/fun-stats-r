#rm(list=ls()) if you need to remove Global Environment

# Library-----
library(prettyR)
# Change Working directory----

PATH="D:\\R\\Mooc\\Semaine 1\\Devoir 1" # Enter the path of your directory file here 
setwd(PATH)

# Read csv file-----

data <- read.csv2("./data/satisfaction_hopital.csv")

# Main-----

# Question 1

# 3 categorical variables: service,sexe and profession

# For service variable

prob_service <- prop.table(table(data$service))*100 # compute the probability
print(prob_service)

# For sexe variable

prob_var_sexe <- prop.table(table(data$sexe))*100 # compute the probability
names(prob_var_sexe) <- c("Percentage of Man","Percentage of Women")
print(prob_var_sexe)

# For profession variable

prob_profession <- prop.table(table(data$profession))*100 # compute the probability
print(prob_profession)

# Question 2

numeric_column<- c("age","amelioration.sante","amelioration.moral", "recommander","score.relation","score.information")
numerical_data <- data[numeric_column]

print(describe(numerical_data,num.desc = c("mean","median","sd","min","max")))

# Question 3

score_relation <- numerical_data$score.relation
hist(score_relation,main = "Histogram of relation score",xlab ="Relation Score",ylim = c(0,120),col = "royalblue4")

# Question 4

data$sexe <- factor(data$sex,levels=c(0,1),labels=c("Man","Woman")) # use of factor to make a better xlabel
boxplot(score_relation~ data$sexe,col="lightgray")