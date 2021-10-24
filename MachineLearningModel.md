# Machine Learning Model

A write up of at least one machine learning algorithm used on the Titanic data set. Included are the sources for codes, reasoning and paths forward.

## Random Forest Classifier
Supervised learning alogrithm. Used for both classification and regression problems. Reviewing similar Titanic datasets this has promising performance.

Learned about a pandas_profiling after reading other Titanic datasets. It is more robust than df.describe(). Need to install the panadas_profiling package.

### Steps:
1. Explore the data. See what is available.
   a. Install the panadas_profiling package.
3. Look at the baseline model. (Suggested in the Titanic dataset writeups). That baseline for the gender is is .70.
4. Code machine learning algorithms.
  a. very much challenge. I think I removed some columns that were not needed. I wanted to remove rows missing values for "Cabin" and "age" but then the Standard Scaler errored.
  b. I tried to do whatever machine learning does using age and ideally sex. Did not understand how to do that.
  c. primarily used the coding language from Module 17. Not sure what else I should or could do.

### Output labels

PassengerId      int64
Survived         int64
Pclass           int64
Age            float64
SibSp            int64
Parch            int64
Fare           float64
Sex_female       uint8
Sex_male         uint8
Embarked_C       uint8
Embarked_Q       uint8
Embarked_S       uint8

#### Source
a. pandas_profiling: https://github.com/pandas-profiling/pandas-profiling/blob/develop/README.md#command-line-usage

b. machine learning code: https://www.activestate.com/blog/how-to-use-machine-learning-to-determine-titanic-survivors/

c. machine learning code: https://betterprogramming.pub/titanic-survival-prediction-using-machine-learning-4c5ff1e3fa16

## Decision Tree.
This is the next suggested learning model to try on the Titianc dataset.

### Random Titanic Facts
Who Died on the Titanic
* John Jacob Astor

* Isidore Straus, co-owner of Macy's

* Benjamin Guggenheim

* George Dennick Wick

* Charles Melville Hays

* Henry B. Harris

* W.T. Stead, investigative jounalist

* Thomas Andrews, Titanic architect

* John Thayer, railroad executive

* Jacques Futrelle

* Archibald Butt

-- Research class fare structure for the Titanic
