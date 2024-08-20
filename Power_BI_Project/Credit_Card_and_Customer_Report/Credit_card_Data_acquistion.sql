-- SQL Query to create and import data from csv files:
show databases;
-- 0. Create a database 
CREATE DATABASE credit_card_database;

-- 1. Create cc_detail table
use credit_card_database;
show tables;
CREATE TABLE credit_card__details (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);


-- 2. Create cc_detail table

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);


-- 3. Copy csv data into SQL (remember to update the file name and file location in below query)

-- First to do this check location of variable "secure_file_priv" using below commnad

 

SHOW VARIABLES LIKE 'secure_file_priv';
-- After that , set secure_file_priv="", then save my.ini file by accessing permission in properties 
-- 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\credit_card.csv' 
LOAD DATA  INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\credit_card.csv'
INTO TABLE credit_card__details
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost, @Week_Start_Date, Week_Num, Qtr, current_year, Credit_Limit, Total_Revolving_Bal, Total_Trans_Amt, Total_Trans_Ct, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc)
SET Week_Start_Date = STR_TO_DATE(@Week_Start_Date, '%d-%m-%Y');

Select * from credit_card__details;

-- copy cust_detail table

LOAD DATA  INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from  cust_detail;
SET SQL_SAFE_UPDATES = 0;

-- UPDATE credit_card__details
-- SET Week_Start_Date = DATE_FORMAT(Week_Start_Date, '%d-%m-%Y')
-- WHERE Client_Num IS NOT NULL; ;
-- SET SQL_SAFE_UPDATES = 1;


-- Now adding New File for credit card and well as  for customer 

LOAD DATA  INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cc_add.csv'
INTO TABLE credit_card__details
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost, @Week_Start_Date, Week_Num, Qtr, current_year, Credit_Limit, Total_Revolving_Bal, Total_Trans_Amt, Total_Trans_Ct, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc)
SET Week_Start_Date = STR_TO_DATE(@Week_Start_Date, '%d-%m-%Y');



LOAD DATA  INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cust_add.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
