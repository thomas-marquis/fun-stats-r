install.packages("Epi")
library(Epi)

hosto <- read.csv2("./data/satisfaction_hopital.csv")



# QUESTION 1 : Transformez la variable « recommander » en une variable binaire « recommander.b » : 
# « recommander.b » vaut 0 si « recommander » vaut 0 ou 1 ;
# « recommander.b » vaut 1 si « recommander » vaut 2.
hosto$recommander.b <- ifelse(hosto$recommander == 2, 1, 0)




# QUESTION 2 : A l’aide d’un odds-ratio, estimez la force de l’association entre 
# « recommander.b » et « sexe ». Estimez un intervalle de confiance de cet odds-ratio.
twoby2(1 - hosto$recommander.b, hosto$sexe)

# Association forte entre les 2 variables (odd ratio = 0.9228)
# Son intervalle de confiance à 95% : 0.6104   1.3950




# QUESTION 3 : Calculez la corrélation (de Pearson) entre « score.relation » et 
#" « age ». Testez statistiquement cette corrélation (le script doit inclure la 
# vérification éventuelle des conditions de validité de la méthode utilisée).
cor.test(hosto$age, hosto$score.relation)




# QUESTION 4 : La moyenne du score de relation est-il significativement 
# différent chez les hommes et chez les femmes ? (le script doit inclure 
# la vérification éventuelle des conditions de validité de la méthode utilisée)

# Nombre d'individu suffisant (> 30)
# Vérification de la normalité de la distribution :


# Vérification de l'égalité des variances :


