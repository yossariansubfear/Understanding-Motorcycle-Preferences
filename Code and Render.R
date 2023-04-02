##Analysis for a 2 wheeler producer to understand the major Factors influencing Consumer preferences for Motorcycles:
##The data used for this analysis is collected by a two wheeler producer ##specifically for this management objective. Initially, a preliminary research ##was conducted and a detailed set of variables that could influence Consumer ##preferences were identified. These parameters were then converted into a ##Questionnaire in the form of statements. Respondents were asked to provide their ##responses to each statement on a 7 point Likert Scale (1= Strongly Agree; 7 = ##Strongly Disagree). 

##Following are the statements used for this purpose:
## 1. I use a 2W because it is affordable 
## 2. It gives me a sense of freedom to own a 2W 
## 3. Low maintenance cost makes it economical in the long run 
## 4. 2W is man’s vehicle essentially 
## 5. I feel powerful on my 2W 
## 6. Some of my friends who don’t have a 2W are jealous of me 
## 7. I feel good when I see ads for my 2W 
## 8. My 2W gives me comfortable ride 
## 9. I think 2W are a safe way to travel 
##10. 3 people should be legally allowed to travel on a 2W

library(readxl) 
library(factoextra)

##Deciding the number of factors to be extracted using Principal Component Analysis (PCA):
motorcycle = read_excel("Motorcycle Preferences Data.xls")
pca_model = prcomp(motorcycle, scale = TRUE)
fviz_eig(pca_model)

##After looking at this plot, we can see that either 3 or 4 components should be ##enough to explain most of the variance in the data. So we will try both these ##values and see what results make more sense.

##Extracting the factors:

fact_model_1 = factanal(motorcycle, factors = 3) 
fact_model_1

##After looking at the results, specifically, at the proportion of variance ##explained by the each factor, we can see that Factor 3 accounts for a mere 9.4 % ##variance explained. It means it does not help us understand the consumer ##preferences any better. The cumulative variance explained by first two factors ##is 57 %, and the p-value is 0.235. So, there is a lot of scope for improvement.

##Let's try 4 factors and see if this can indeed be improved:

fact_model_2 = factanal(motorcycle, factors = 4) 
fact_model_2

##Here, similar to the earlier result, even if there are 4 factors Factor 4 ##accounts only for 8.4 % variance explained. So, we can ignore the Factor 4, and ##consider only first 3 factors. These 3 combined give a cumulative value of 72.1 ##% for the variance explained, with p-value of 0.542. While not the best, this ##result is lot better than the earlier one and we can go forward with these 3 ##factors for our analysis.

##Understanding what each factor represents:
##Now, let us try to interpret these 3 factors based on their constituent loadings.

fact_model_1$loadings

##As can be seen from the output, Factor 1 has high loading values for the ##variables "Mans_Veh", "Powerful", Frnds_Jls", and "Ads_Feel_Good". Based on what ##these variables represent in the original survey statements, we can create a ##profile for this factor. Factor 1 represents that a 2 wheeler is a man's ##vehicle, it makes them feel powerful, makes their friends jealous, and the ##advertisements for the two wheeler they own makes them feel good. Considering ##all these points, we can label this Factor as "Macho Image".

##For the Factor 2, the loading values for the variables "Comfortable" and ##"Safety" are high. This Factor represents overall sense of security while owning ##and driving a motorcycle, so we label it "Security".

##For the Factor 3, the loading values for the variables "Affordable", ##"Maint_Cost", and "Legal_3" are high. It shows that Factor 3 is made up of the ##following attributes- a two wheeler being affordable, having low maintenance ##cost, and advocacy for allowing 3 people on a two wheeler. Overall, this factor ##represents budget and economical considerations. Let's name it "Economy".
