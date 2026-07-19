# BrightTV_Viewership Analysis Case Study
Analysis of BrightTV user profiles and viewing transactions to identify the consumption drivers and growth areas that can help the Customer Value Management (CVM) team expand the subscription base.

**1. Overview**
BrightTV's CEO set an objective to grow the company's subscription base for the current financial year. This project analyses two datasets — **user profiles** and   **viewership transactions** — to answer four business questions:
  1. What are the user and usage trends on BrightTV?
  2. What factors influence consumption?
  3. What content should be scheduled on low-consumption days?
  4. What initiatives would grow the user base?
     
**Scope of data:** 5,375 user profile and 10,000 viewing sessions covering 1 January – 31 March 2016, representing 1,523 hours of viewing across 21 channels.

**2. Tools Used**

      Miro-  Process flowchart for the analytical workflow
      Canva - to turn the project plan into a visual timeline that makes deadlines, sequencing, and status easy to communicate to stakeholders.
      SQL- for Data cleaning, UTC → SAST conversion, joins between profiles and viewership, aggregation of KPIs
      Microsoft Excel - Pivot tables, exploratory analysis, supporting charts
      Power BI - Interactive dashboard for viewership, demographic and channel-level trends
      Powerpoint- Final 20-minute stakeholder presentation

  **3. Methodology**
     Step 1 — Data profiling. Assessed both tables for completeness, duplicates and outliers before any analysis.
     
     Step 2 — Data cleaning. Key issues identified and treated:
        Timezone: all timestamps supplied in UTC; converted to South African Standard Time (UTC +2). All findings below are stated in SAST.
        Missing demographics: 702 records missing Gender and Province, 1,078 missing Race, and 920 missing Name/Surname. Blank strings were standardised to     Unknown rather than dropped, to preserve session volume.
        Invalid ages: 920 profiles recorded an age of 0 and 9 exceeded 90 years. These were flagged and excluded from age-band analysis.
        Channel name inconsistencies: duplicate spellings such as Supersport Live Events / SuperSport Live Events and SawSee / Sawsee were consolidated.
        Duplicate emails: 3,765 non-unique email addresses, indicating an unreliable contact field for CVM campaigns.
        Duplicate rows: 5 exact duplicate session records removed.

    Step 3 — Data modelling. 
    Joined viewership to profiles on UserID. 9,738 of 10,000 sessions (97.4%) matched a profile; the remaining 262 were retained for    volume analysis but excluded from demographic breakdowns.

    Step 4 — Analysis & visualisation. 
    Built KPIs (sessions, total hours, average session length, sessions per user) and sliced them by day of week, hour of day, channel, province, age band and gender in Excel and Power BI.

**4. Key Insights**
  **4.1 Engagement is shallow and highly concentrated**
  Median session length is only 1.8 minutes, against a mean of 9.1 minutes — 37.5% of all sessions last under a minute, pointing to heavy channel-surfing or         abandonment.
  51.2% of viewers watched only once in the full three-month period.
  The top 10% of viewers generate 58.6% of total watch hours. The platform is carried by a small, loyal core.
  989 registered profiles (18.4%) never streamed at all — a ready-made reactivation audience.

  ** 4.2 Sport is the single biggest consumption driver**
  Sport channels account for 41% of sessions but 54% of watch hours.
  ICC Cricket World Cup 2011 is the top channel by hours (412 hours, 16.9-minute average session — the longest of any channel), followed by Supersport Live Events   (313 hours).
  Consumption climbs sharply across the quarter: 291 hours in January → 393 in February → 839 in March, coinciding with major cricket fixtures. The five highest-    consumption days of the quarter all fall on live-event dates (peak: 30 March, 86.5 hours).

 ** 4.3 Clear weekly and daily patterns**
  Saturday is the strongest day (296 hours), followed by Friday (252) and Wednesday (234).
  Monday is by far the weakest day — 115 hours and an average of just 74 sessions per day, roughly 40% below Saturday. Sport is materially under-represented in      the Monday mix.
  Viewing builds from 07:00, peaks between 12:00 and 18:00 (17:00 is the single busiest hour), and tapers after 20:00.

  
     
    

