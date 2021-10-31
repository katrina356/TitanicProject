# Survival Rates on the Titanic (Are you a Leo or a Kate?)
![](Resources\Images\R_M_S_Titanic.jpg)

## Presentation

### Logic behind the topic selection:
The Titanic is cool, history cool, and life is too serious… We wanted to do something that we all enjoy learning about. A large enough data set for the project but not too large to manage.

### Data sources:
The initial data sets were selected from two different sources:

[Encyclopedia Titanica](https://www.encyclopedia-titanica.org/)

[Data is Plural](https://www.data-is-plural.com/archive/2016-03-30-edition/)

We started with six sources of data, analyzed the data, and decided which information we need to utilize from which data sets.  This will help us understand whether we need all or only some of the data sets.

### Questions to answer:
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

### Documentation:
Please refer to the following link for our Google Slides:
[Google Presentation](https://docs.google.com/presentation/d/1s3Yb2CB7xHdOnEonHknPmTtLHNYMpXDFo4cBXckvWIc/edit#slide=id.p)

Please refer to the following link for visualizations:
[Tableau](https://public.tableau.com/app/profile/katrina.holcomb/viz/Titanic_Prelim_V2/TitanicFinal?publish=yes)


## GitHub 

✓ Readme  
✓ Branch per team member (3)  
✓ At least four commits from the duration of the first segment  
✓ Communication Protocols:

Name of Communication | Format | Frequency | Audience | Owner
----------------------|--------|-----------|----------|------
Task Status Update | Slack and T/TH Class Time | 3x a Week | Project Team | All
Project Status Update |	Thursday Class Time |	1 x Week |	TAs |	All
Action Items Follow-up |	Slack and T/TH Class Time |	Saturday of Week Due		
Risks Review and Update |	Tuesday Class Time |	1x Week	Project | Team |	All
Project Communication and Questions |	Project Slack Channel |	Before Pulling Hair Out; So After no more than 20 Minutes of Frustration |	Project Team |	All
Wits End Project Communication and Questions |	Titans Slack Channel |	As Needed |	TAs	 | All

## Machine Learning Model

A provisional machine learning model that stands in for the final machine learning model and accomplishes the following:   
✓ Takes in data in from the provisional database   
✓ Outputs label(s) for input data

## Database

Several sites were reviewed for data sets.  These included Kaggle, Data is Plural and Encyclopedia Titanica.  The Encyclopedia Titanica site had the most valuable information and three tables were utilzed.  The table from Data is Plural was also used. 

The data sets were put into .csv and Jupyter Notebook (Pandas).  Data was analyzed to see what type of data is, how it might be used and how it will need to be cleaned.  

We were able to give each passenger a distict identifier and then the four tables were combined and filtered in PostgeSQL.  The filer removed passengers that were not on the Titanic when the ship struck the iceberg.

Cleaning included taking out special characters and replacing stings with numerical data.