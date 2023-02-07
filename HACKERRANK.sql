/*HACEKER RANK*/
/*Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . 
Truncate your answer to  decimal places.*/

SELECT TRUNCATE(SUM(LAT_N),4)
FROM STATION 
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

/*Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than .
 Truncate your answer to  decimal places.*/

SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION 
WHERE LAT_N < 137.2345;
 
 /*Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . 
 Round your answer to  decimal places.*/
SELECT ROUND(LONG_W, 4)
FROM STATION 
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;

/*Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . 
Round your answer to  decimal places.*/
SELECT ROUND(MIN(LAT_N), 4)
FROM STATION 
WHERE LAT_N > 38.7780;


/*Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . 
Round your answer to  decimal places.*/
SELECT ROUND(MAX(LAT_N)-MIN(LAT_N)+MAX(LONG_W)-MIN(LONG_W),4) FROM STATION;


 