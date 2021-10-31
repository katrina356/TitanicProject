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
HOW WAS THE DATABASE CREATED

CHALLENGES

SUCCESS

IMAGES

### Machine Learning Model
HOW WAS THE MODEL CREATED

CHALLENGES

SUCCESS

IMAGES

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


