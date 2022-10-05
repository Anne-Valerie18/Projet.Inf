#Importation du fichier csv
df<-read.csv("CreditBancaire.csv")

str(df)

#La moyenne du credit
mean(df$Credit)

#Le nombre de jours de retard de paiement par type de credit
t.moy<-aggregate(Jours~Type, df, mean)
t.moy

#Transformation de la variable t.moy en vecteur afin de realiser le diagramme
Jours<-c(80.76821,66.346667,95.94737)
Jours
names(Jours)<-c("Commerce","Consommation","Production")
Jours

#Diagramme en baton de la moyenne de chaque type de credit
barplot(Jours, main = "Diagramme de la moyenne par type de credit", col = "Pink", ylab = "Moyenne")
