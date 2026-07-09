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



