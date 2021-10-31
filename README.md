# Survival Rates on the Titanic (Are you a Leo or a Kate?)
### Final Project for Denver University Data Analytics Bootcamp

![](Resources\Images\R.jpg)    

## Topic - Titanic Survivability
There are a lot of mysteries around the Titanic.  Who survived, who did not survive and why?  We selected this subject to understand some of the why around the passengers survivablity.  Also, history is interesting and we wanted to understand more about the history of the Titanic.  We also did not want to do something too serious. 

By analyzing demographic around the passengers and crew of the Titanic, the model will be able to prdedict whether or not someone would survive based on ticket class, gender, country of residency, ANY THING ELSE...

As an example, someone who worked in the engine, would have a less ability to survive than someone in first class.  Or someone who is in third class might survive over someone in first class, because they had a grit to survive a tradgecy while a first class passenger might think that they are too good to go in the boat or someone one will be along soon to save them.  This should be able to help us gain insight on the passengers of the ship.

## Contributors

Member's Name | Role 
---------|----------
 [Katrina](https://github.com/katrina356) | Dashboard & Visualization 
 [Sara](https://github.com/sarifrey) | Machine Learning 
 [Shrese](https://github.com/shrese) | Database 

All members worked together on each section to esure accuracy of data, modeling and information provided to the reader.

### Communication Protocol

Name of Communication | Format | Frequency | Audience | Owner
----------------------|--------|-----------|----------|------
Task Status Update | Slack and T/TH Class Time | 3x a Week | Project Team | All
Project Status Update |	Thursday Class Time |	1 x Week |	TAs |	All
Action Items Follow-up |	Slack and T/TH Class Time |	Saturday of Week Due		
Risks Review and Update |	Tuesday Class Time |	1x Week	Project | Team |	All
Project Communication and Questions |	Project Slack Channel |	Before Pulling Hair Out; So After no more than 20 Minutes of Frustration |	Project Team |	All
Wits End Project Communication and Questions |	Titans Slack Channel |	As Needed |	TAs	 | All

## Inital questions to consider in the analysis
1. How do the following impact survival rates?
    * Age
    * Adult vs. Child
    * Ticket Class
    * Passenger vs. Crew
    * By size of their party traveling
    * By country
    * Gender
    * Embarked
    * By servant vs. employer
2. What was the average cost of ticket in 2021?
    * Cost by class compared to today
3. What was the class fare structure?
4. How long did people survive after by class, etc.?

## Links to External Information
* Original Data Souces:
[Encyclopedia Titanica](https://www.encyclopedia-titanica.org/)
[Data is Plural](https://www.data-is-plural.com/archive/2016-03-30-edition/)

* Google Slides:  
[Google Presentation](https://docs.google.com/presentation/d/1s3Yb2CB7xHdOnEonHknPmTtLHNYMpXDFo4cBXckvWIc/edit#slide=id.p)

* Please refer to the following link for visualizations:
ADD LINK!

## Presentation
### Technology and Analytic Tools
WHAT DID WE USE AND WHY?
IMAGES?  

### Data Exploration
WHAT/HOW DID WE DO TO EXPLORE THE DATA BEFORE PUTTING IN A DATABASE

We started with six sources of data, analyzed the data, and decided which information we need to utilize from which data sets.  This will help us understand whether we need all or only some of the data sets.

Several sites were reviewed for data sets.  These included Kaggle, Data is Plural and Encyclopedia Titanica.  The Encyclopedia Titanica site had the most valuable information and three tables were utilzed.  The table from Data is Plural was also used. 

The data sets were put into .csv and Jupyter Notebook (Pandas).  Data was analyzed to see what type of data is, how it might be used and how it will need to be cleaned.  

We were able to give each passenger a distict identifier and then the four tables were combined and filtered in PostgeSQL.  The filer removed passengers that were not on the Titanic when the ship struck the iceberg.

Cleaning included taking out special characters and replacing stings with numerical data.

### Database
Once a decision was made on the datasets, it was decided to use PostgreSQL via PGAdmin to build the DataFrame.
* Created a schema of the data via ERD showing how the data is organized and connected via [QuickDBD](https://www.quickdatabasediagrams.com/).  

![](Resources\Images\QuickDBD-export.png)

Steps:
* Utilizing the schema tables were created in PostgreSQL. (table_creation.slq)
* The original dataset was imported and filtered into PostgresSQL.
* Queries were written to make the data more usable and complete.  
    * Some of the column names were changed as PGAdmin would not allow the original column name because they were functions within the SQL language.
    * The NULL values in the survived_y_n were replaced with 0.
        * survived = 1
        * not survived = 0
    * Removed any passengers or crew members that were not on the ship when it hit the iceberg.
* The imported datasets were connected and combined into the final dataset. (sql_statement.sql)
* The combined data was exported into the DataFrame use for analysis. (RMS_Titanic_Final_DataFrame.csv)  

![](Resources\Images\pgadmin.png)
___
The biggest challenge to the data was understanding how the data worked and how to connect the files.  The first thought was that the names might be the way to connect the data; however, it was discovered that the names were not consistent across all datasets.  The data required that each name have it's own index so that the data could be connected.


### Machine Learning Model
The RandomForestClassifier was initially utilized for this analysis to predict who survived the Titanic disaster.

Data | Training | Testing | To Numeric
---------|----------|---------|---------
gender^ | x | x | x | 
ticket_class^ | x | x | x | 
age | x | x |  | 
marital_status | x | x | x | 
category | x | x | x | 
embarked | x | x | x | 
country_of_residence | x | x | x |  
sibsp¶ | x | x |  | 
parch¶ | x | x |  | 
fare†† | x | x |  | 
survived_y_n†† | | x | | 

All unlisted columns from the DataFrame were removed.  
^ Gender and ticket_class = primary features for determining survivability on the Titanic.  
† Fare is a subfeature based on ticket_class.  
†† The feature “survived_y_n” wasremoved from the training to test the accuracy.
¶ Sibsp and Parch denote how many siblings/parents were on board.   
___
Features by importance:  
    (0.30503702309593206, 'age'),  
    (0.2139435376173998, 'gender'),  
    (0.11452194680648929, 'ticket_class'),  
    (0.1023419958134857, 'fare'),

___
Age + survived_y_n + category returns that the younger people, especially crew members did not survive.
___
Steps:
* Explore the data. See what is available. 
    * Install the panadas_profiling package.
    * Tied charts using the seaborn_library after seeing the results in the Kaggle Titanic dataset.  
    * Create charts on survivability based on factors: age, gender, and ticket class.
* Look at the baseline model. (Suggested in the Titanic dataset writeups.  The Kaggle Titanic dataset baseline for the women surviving is 70 percent. 
* Code machine learning algorithms.  
    * In the preprocessing, transformed data
    * Removed data not used or not informing survivability.
    * Ran Random Forest Classifier
    * Created and ran confusion matrix
___
The RandomForestClassifier resulted in a 94% accuracy; however, the results of the Confusion Matrix is poor at 78%.  Overall the numbers are okay. The f1-score is high enough. The precision is decent.

![](Resources\Images\randomforest.png)
___
Pandas Profiling - During the research and analysis of the modeling process, Pandas profiling was discovered as a great way to view the overall statistics of the data.  It is visually more appealing and interactive. 

THIS MAY NOT BE THE IMAGE WE WANT TO USE FOR THE PANDAS PROFILING...

![](Resources\Images\pandasprofiling.png)
___
Sources:
1. [Pandas Profiling](https://github.com/pandas-profiling/pandas-profiling/blob/develop/README.md#command-line-usage) 
2. [Machine Learning Code - activestate](https://www.activestate.com/blog/how-to-use-machine-learning-to-determine-titanic-survivors/)
3. [Machine Learning Code - betterprogramming](https://betterprogramming.pub/titanic-survival-prediction-using-machine-learning-4c5ff1e3fa16)
4. [RandomForestClassifier](https://towardsdatascience.com/predicting-the-survival-of-titanic-passengers-30870ccc7e8)

### Interactive Dashboard
HOW WAS THE DASHBOARD CREATED

CHALLENGES

SUCCESS

IMAGES

## Conclusion
Overview:

Summary:

Results:

Future Recommendations:


