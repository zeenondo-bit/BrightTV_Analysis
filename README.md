**BrightTV — Viewership Analytics Case Study**

Analysis of BrightTV user profiles and viewing transactions to identify what drives consumption and where the biggest growth opportunities lie for the Customer Value Management (CVM) team.

**1. Overview**
   
    BrightTV's CEO set an objective to grow the company's subscription base for the current financial year. This project analyses two datasets — user profiles and        viewership transactions — to answer four business questions:
    1. What are the user and usage trends on BrightTV?
    2. What factors influence consumption?
    3. What content should be scheduled on low-consumption days?
    4. What initiatives would grow the user base?

    Scope of data: 5,375 user profiles and 10,000 viewing sessions covering 1 January – 31 March 2016, representing 1,523 hours of viewing across 21 channels.

**2. Tools Used**
   Miro - Process flowchart for the analytical workflow
   
   Canva - to turn a project plan into a visual timeline that makes deadlines, sequencing, and status easy to communicate to a team or stakeholders.
   
   SQL - Data cleaning, UTC → SAST conversion, joins between profiles and viewership, aggregation of KPIs
   
   Microsoft Excel - Pivot tables, exploratory analysis, supporting charts
   
   Power BI - Interactive dashboard for viewership, demographic and channel-level trends
   
   Powerpoint - Final 20-minute stakeholder presentation

**3. Methodology**

   Profiled both tables, then cleaned: timestamps converted UTC → SAST (+2), duplicate channel spellings consolidated, invalid ages (920 profiles aged 0) excluded    from age analysis, and missing demographics retained as Unknown to preserve session volume.

   Viewership was joined to profiles on UserID, matching 97.4% of sessions. KPIs — sessions, watch hours, average session length and sessions per user — were then    sliced by day, hour, channel, province, age and gender in Excel and Power BI.

**4. Key Insights**
   - Consumption is event-led, not habit-led — sport is 41% of sessions but 54% of watch hours, and all five peak days were live cricket fixtures
   - Engagement is shallow — median session is 1.8 minutes, and 51% of viewers watched only once in three months
   - A small core carries the platform — the top 10% of viewers generate 58.6% of watch hours; 989 profiles (18%) never streamed at all
   - Monday is the weak point — 115 hours against Saturday's 296, roughly 40% lower; daily viewing peaks 12:00–18:00
   - The audience is narrow — male viewers outnumber female 9:1, the 25–34 band dominates, and Gauteng alone is 36% of hours
   - The customer database is unreliable — 3,765 duplicate emails and ~13% missing demographics limit CVM targeting

**5. Recommendations**

   Content for low days (Mon–Tue)
   - sport highlights and magazine shows on Monday evenings to extend the weekend peak; anchor Monday prime time (17:00–20:00) with    Channel O, Trace TV and           Africa Magic, which already over-index on Mondays; late-afternoon kids' blocks to capture household viewing.

   Growing the user base
   
    - Reactivate the 989 dormant profiles and 51% single-session cohort, timed to a live fixture
    - Fix the contact database — de-duplicate and capture demographics at sign-up; this gates everything else
    - Convert events into habits with follow-up recommendations after live sport
    - Widen the audience beyond young males in Gauteng — female and 45+ segments are under-served
    - Reduce early drop-off through faster load times and better content discovery

**6. Repository Structure**
   1. Project_description - Case study brief and raw CSV data
   2. Project_planning - Miro flowchart + Gantt Chart
   3. Data_processing - SQL script + Excel analysis
   4. Presentation - Final deck + dashboard link


    

