Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:CITY.jpg

Country.jpg



SELECT SUM(C.POPULATION) FROM CITY c,Country ct WHERE C.COUNTRYCODE=CT.CODE AND CT.CONTINENT='ASIA';
