library(readxl) 
library(factoextra)

#PCA to decide the number of factors to be extracted
motorcycle = read_excel("Motorcycle Preferences Data.xls")
pca_model = prcomp(motorcycle, scale = TRUE)
fviz_eig(pca_model)

#Extracting the factors
fact_model_1 = factanal(motorcycle, factors = 3)
fact_model_1

#changing the number of factors
fact_model_2 = factanal(motorcycle, factors = 4)
fact_model_2

