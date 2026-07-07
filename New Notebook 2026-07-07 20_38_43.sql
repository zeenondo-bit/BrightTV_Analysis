-- Databricks notebook source
---Telling Databricks to use 'Bright_TV
Select*
From june_intake.bright_tv_casestudy.userprofiles;

Select*
From june_intake.bright_tv_casestudy.viewership;

Use june_intake.bright_tv_casestudy;

---Gender checks
Select distinct Gender
From userprofiles;

Select distinct
    CASE
        WHEN Gender = 'None' THEN 'Unknown'
        WHEN Gender = ' ' THEN 'Unknown'
        WHEN Gender = 'Null' THEN 'Unknown'
        ELSE Gender
        END AS Gender_clean
From userprofiles;


