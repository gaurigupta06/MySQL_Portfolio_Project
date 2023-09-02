SELECT * FROM cars.car_dekho;

USE Cars;

-- READ DATA --
SELECT * FROM car_dekho;

-- Total Cars: To get a total records --
SELECT COUNT(*) FROM car_dekho;

-- The manager asked the employee How many cars will be available in 2023? -- 
SELECT COUNT(*) FROM Car_dekho WHERE YEAR = 2023; #6

-- The manager asked the employee How many cars will be available in 2020, 2021, 2022 --
SELECT COUNT(*) FROM Car_dekho WHERE YEAR = 2020; #74
SELECT COUNT(*) FROM Car_dekho WHERE YEAR = 2021; #7
SELECT COUNT(*) FROM Car_dekho WHERE YEAR = 2022; #7

-- GROUP BY --
SELECT COUNT(*) FROM Car_dekho WHERE YEAR IN (2020,2021,2022);
SELECT COUNT(*) FROM Car_dekho WHERE YEAR IN (2020,2021,2022) group by year;

-- Client asked me print the total of all cars by year. I don't see all the details. -- 
SELECT YEAR, COUNT(*) FROM Car_dekho group by year;

-- Client asked to car dealer agent How many diesel cars was there in 2020? -- 
SELECT COUNT(*) FROM Car_dekho WHERE YEAR=2020 AND FUEL ="Diesel"; #20

-- Client asked to car dealer agent How many petrol cars was there in 2020? -- 
SELECT COUNT(*) FROM Car_dekho WHERE YEAR=2020 AND FUEL ="Petrol"; #51

-- The manager told the employee to give a print All the fuel car(petrol, diesel and CNG) come by all year. --
SELECT YEAR, COUNT(*) FROM Car_dekho WHERE Fuel= "Petrol" group by year; 
SELECT YEAR, COUNT(*) FROM Car_dekho WHERE Fuel= "Diesel" group by year;
SELECT YEAR, COUNT(*) FROM Car_dekho WHERE Fuel= "CNG" group by year;  

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?-- 
SELECT YEAR, COUNT(*) FROM Car_dekho GROUP BY YEAR HAVING COUNT(*)>100;

-- Manager said there were more than 100 cars in a given year, which year had less than 100 cars?-- 
SELECT YEAR, COUNT(*) FROM Car_dekho GROUP BY YEAR HAVING COUNT(*)<100;

-- The manager said to the employee to find all cars count details between 2015 and 2023; we need the complete list--
SELECT COUNT(*) FROM Car_dekho WHERE YEAR BETWEEN 2015 AND 2023; 

-- The manager said to the employee to get all car details betweem 2015 and 2023; we need the complete list--
SELECT * FROM Car_dekho WHERE YEAR BETWEEN 2015 AND 2023;

-- END --







