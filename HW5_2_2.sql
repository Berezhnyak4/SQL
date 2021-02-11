SELECT 
	DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS DR_this_year,
	COUNT(DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10)))) AS count_day
FROM
	tbl.users
GROUP BY DR_this_year
