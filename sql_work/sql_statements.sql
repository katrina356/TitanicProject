-- combine four tables into one database named Titanic_Combined_sql
SELECT DISTINCT ON (p.index) p.index, 
	p.passenger_name,
	p.born,
	p.died,
	p.age,
	p.age_at_death,
	p.gender,
	p.marital_status,
	p.category,
	p.ticket_class,
	p.job_group,
	p.ticket,
	p.cabin,
	p.embarked,
	p.disembarked,
	r.country_of_residence,
	r.profession,
	r.job,
	t.pclass,
	t.survived,
	t.sibsp,
	t.parch,
	t.fare,
	t.boat,
	t.body,
	r.countryid2,
	s.survived_y_n
INTO Titanic_Combined_sql
FROM RMS_titanic_passengers_and_crew AS p
	LEFT JOIN RMS_Titanic_country_of_residency AS r
		ON p.index = r.mainID
	LEFT JOIN Titanic AS t
		ON p.index = t.main_key
	LEFT JOIN Titanic_Survivors AS s
		ON p.index = s.index;

--Change the null values in the survived column to 0, which is equal to 0.  (1 = survivied; 0 = did not survive)
UPDATE Titanic_Combined_sql SET survived_y_n = 0 WHERE survived_y_n IS NULL

-- Filter out the passenger_names that were not on the ship when the ship hit the iceberg.
SELECT 
	index,
	passenger_name,
	born,
	died,
	age,
	age_at_death,
	gender,
	marital_status,
	category,
	ticket_class,
	job_group,
	ticket,
	cabin,
	embarked,
	disembarked,
	country_of_residence,
	profession,
	job,
	pclass,
	survived,
	sibsp,
	parch,
	fare,
	boat,
	body,
	countryid2,
	survived_y_n
INTO filtered_data
FROM Titanic_Combined_sql
WHERE 
	job_group ISNULL OR
	job_group = 'H&W Guarantee Group' OR
	job_group = 'Musician' OR
	job_group = 'Postal Clerk' OR
	job_group = 'Servant' OR	
	job_group = 'Substitute Crew' OR
	job_group = 'Titanic Officers'
ORDER BY index;




--SELECT survived_y_n, COUNT(*)
--	FROM filtered_data
--GROUP BY survived_y_n;