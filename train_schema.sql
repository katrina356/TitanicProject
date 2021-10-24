-- Creating tables for titanic_train
CREATE TABLE titanic_train (
    index VARCHAR PRIMARY KEY,
	passenger_id FLOAT,
    survived FLOAT,
	passenger_name VARCHAR,
	sex VARCHAR,
	age FLOAT,
	sibsp FLOAT,
	parch FLOAT,
	ticket VARCHAR,
	fare FLOAT,
	cabin VARCHAR,
	EMBARKED VARCHAR);
	
SELECT COUNT(index)
	FROM titanic_train;