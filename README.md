# Understanding-Motorcycle-Preferences (Using Factor Analysis)
### Analysis for a 2 wheeler producer to understand the major Factors influencing Consumer preferences for Motorcycles:  

The data used for this analysis is collected by a two wheeler producer specifically for this management objective.  

Initially, a preliminary research was conducted and a detailed set of variables that could influence Consumer preferences were identified.  
These parameters were then converted into a Questionnaire in the form of statements.  

Respondents were asked to provide their responses to each statement on a 7 point Likert Scale (1= Strongly Agree; 7 = Strongly Disagree).  
Following are the statements used for this purpose:

    Q1. I use a 2W because it is affordable 
    Q2. It gives me a sense of freedom to own a 2W 
    Q3. Low maintenance cost makes it economical in the long run   
    Q4. 2W is man’s vehicle essentially. 
    Q5. I feel powerful on my 2W  
    Q6. Some of my friends who don’t have a 2W are jealous of me   
    Q7. I feel good when I see ads for my 2W 
    Q8. My 2W gives me comfortable ride 
    Q9. I think 2W are a safe way to travel. 
    Q10. 3 people should be legally allowed to travel on a 2W. 


### Please go through the code, analysis, and plots to understand how I got to this conclusion:

As can be seen from the output, Factor 1 has high loading values for the variables "Mans_Veh", "Powerful", Frnds_Jls", and "Ads_Feel_Good".  
Based on what these variables represent in the original survey statements, we can create a profile for this factor.  
Factor 1 represents that a 2 wheeler is a man's vehicle, it makes them feel powerful, makes their friends jealous,   
and the advertisements for the two wheeler they own makes them feel good. Considering all these points, we can label this Factor as "Macho Image".  

For the Factor 2, the loading values for the variables "Comfortable" and "Safety" are high.   
This Factor represents overall sense of security while owning ##and driving a motorcycle, so we label it "Security".  


For the Factor 3, the loading values for the variables "Affordable", "Maint_Cost", and "Legal_3" are high.  
It shows that Factor 3 is made up of the following attributes- a two wheeler being affordable, having low maintenance   
cost, and advocacy for allowing 3 people on a two wheeler. Overall, this factor ##represents budget and economical considerations.  
Let's name it "Economy".
