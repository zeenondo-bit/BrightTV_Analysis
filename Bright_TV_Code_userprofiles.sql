-- Databricks notebook source
---Telling Databricks to use 'Bright_TV
Select*
From june_intake.bright_tv_casestudy.userprofiles;

Select*
From june_intake.bright_tv_casestudy.viewership;

Use june_intake.bright_tv_casestudy;
----------------------------------------------------------
---Gender checks
----------------------------------------------------------
Select distinct Gender ---to check what is contained in this categorical column
From userprofiles;

Select distinct
    CASE
        WHEN Gender = 'None' THEN 'Unknown' ---Replaces the value None with unknown
        WHEN Gender = ' ' THEN 'Unknown' ---Replaces the empty space with unknown
        WHEN Gender = 'Null' THEN 'Unknown' ---Replaces null with unknown
        ELSE Gender ---if gender is male or female, return it as it is
        END AS Sex ---new column name
From userprofiles;
-----------------------------------------------------------------
---Race Checks
------------------------------------------------------------------
Select distinct Race
From june_intake.bright_tv_casestudy.userprofiles;

Select Count(distinct UserID) AS Subs,
    CASE 
        WHEN Race = 'other' THEN 'unknown' ---replace other with unknown
        WHEN Race = 'None' THEN 'unknown' ---replace none with unknown
        WHEN Race = ' ' THEN 'unknown' ----replace empty with unknown
        WHEN Race IS NULL THEN 'unknown' ---replace null with unknown
        ELSE Race ---keep it as it is
        END AS Ethnicity ---new column
From june_intake.bright_tv_casestudy.userprofiles
Group by Ethnicity;
--------------------------------------------------
--Province checks
---------------------------------------------------
Select distinct Province
From june_intake.bright_tv_casestudy.userprofiles;

Select Distinct
    CASE 
        WHEN Province = 'None' THEN 'unknown'
        WHEN Province = ' ' THEN 'unknown'
        ELSE Province
        END AS Region
From june_intake.bright_tv_casestudy.userprofiles;
--------------------------------------------------
--Age checks
--------------------------------------------------
Select distinct Age
From june_intake.bright_tv_casestudy.userprofiles;

Select MIN(Age) AS min_age ---checks the youngest person
        MAX(Age) AS max_age ---checks the oldest person
        AVG(Age) AS mean_age
From june_intake.bright_tv_casestudy.userprofiles;
Select
    CASE
        WHEN Age = 0 THEN 'Infant'
        WHEN Age between 1 AND 12 THEN 'Kids'
        WHEN Age between 13 AND 17 THEN 'Youth'
        WHEN Age between 18 AND 35 THEN 'Young Adults'
        WHEN Age between 36 AND 50 THEN 'Adults'
        WHEN Age >50 AND Age <=60 THEN 'Elder'
        WHEN Age >60 THEN 'Pensioner'
        END AS Age_group
From june_intake.bright_tv_casestudy.userprofiles;
----------------------------------------------------------
CREATE OR REPLACE TEMPORARY TABLE processed_userprofiles
(Select
    UserID,
    CASE
        WHEN (Email IS NOT NULL) OR (Email<>' ') OR (Email NOT IN ('None','other')) THEN 1
        ELSE 0
        END AS Email_flag,
    CASE
        WHEN (`Social Media Handle` IS NOT NULL) OR (`Social Media Handle`<>' ') OR (`Social Media Handle` NOT IN ('None', 'other')) THEN I
        ELSE 0
        END AS Socialmedia_flag,
    CASE
        WHEN gender = 'None' THEN 'unknown'
        WHEN gender = ' ' THEN 'unknown'
        WHEN gender IS NULL THEN 'unknown'
        ELSE gender
        END AS sex,
    
    CASE
        WHEN race = 'other' THEN 'unknown' ---replace other with unknown
        WHEN race = 'None' THEN 'unknown' ---replace none with unknown
        WHEN race = ' ' THEN 'unknown' ----replace empty with unknown
        WHEN race IS NULL THEN 'unknown' ---replace null with unknown
        ELSE race ---keep it as it is
        END AS ethnicity ---new column
    
    CASE
        WHEN Province = 'None' THEN 'unknown'
        WHEN Province = ' ' THEN 'unknown'
        ELSE Province IS NULL THEN 'unknown'
        ELSE Province
        END AS Region
    
    AGE,
    CASE
        WHEN Age = 0 THEN '01.Infant: 0'
        WHEN Age between 1 AND 12 THEN '02.Kids: 1 - 12'
        WHEN Age between 13 AND 17 THEN '03.Youth: 13 - 17'
        WHEN Age between 18 AND 35 THEN '04.Young Adults: 18 - 35'
        WHEN Age between 36 AND 50 THEN '05.Adults: 36 -50'
        WHEN Age >50 AND Age <=60 THEN '06.Elder: 51 -60'
        WHEN Age >60 THEN '07.Pensioner: >60'
        END AS Age_group
FROM june_intake.bright_tv_casestudy.userprofiles);

Select*
from processed_userprofiles;

---cheking for Duplicates
Select Count(*) AS cnt,
        userid
from processed_userprofiles
group by userid
having count(*)>1;



