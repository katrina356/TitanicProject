-- Creating table RMS_titanic_passengers_and_crew
CREATE TABLE RMS_titanic_passengers_and_crew(
	index VARCHAR,
	passenger_name VARCHAR,
	born FLOAT,
	died FLOAT,
	age FLOAT,
	age_at_death FLOAT,
	gender VARCHAR,
	marital_status VARCHAR,
	category VARCHAR,
	ticket_class VARCHAR,
	job_group VARCHAR,
	ticket VARCHAR,
	cabin VARCHAR,
	embarked VARCHAR,
	disembarked VARCHAR);

SELECT COUNT(index)
FROM RMS_titanic_passengers_and_crew;

-- Creating table RMS_Titanic_country_of_residency
CREATE TABLE RMS_Titanic_country_of_residency(
	mainID VARCHAR,
	country_ID2 VARCHAR,
	passenger_name VARCHAR,
	age FLOAT,
	class_Dept VARCHAR,
	ticket VARCHAR,
	joined VARCHAR,
	job VARCHAR,
	boat_body VARCHAR,
	country_of_residence VARCHAR,
	profession VARCHAR);

SELECT COUNT(mainID)
FROM RMS_Titanic_country_of_residency;

-- Creating table Titanic
CREATE TABLE Titanic(
	main_key VARCHAR,
	pclass VARCHAR,
	titanic_key2 VARCHAR,
	survived FLOAT,
	passenget_name VARCHAR,
	sex VARCHAR,
	age FLOAT,
	sibsp FLOAT,
	parch FLOAT,
	ticket VARCHAR,
	fare FLOAT,
	cabin VARCHAR,
	embarked VARCHAR,
	boat VARCHAR,
	body VARCHAR,
	home_dest VARCHAR);


SELECT COUNT(main_key)
FROM Titanic;

-- Creating table Titanic_Survivors
CREATE TABLE Titanic_Survivors(
	index VARCHAR, 
	passenger_name VARCHAR,
	age FLOAT,
	class_dept VARCHAR,
	ticket VARCHAR,
	joined VARCHAR,
	job VARCHAR,
	boat_body VARCHAR),
	survived_y_n);

SELECT COUNT(index)
 	FROM Titanic_Survivors;