# Pewlett-Hackard_Analysis

## Purpose 
Pewlett-Hackard needed an analysis done to determine the number of retirement elgilible employees on staff.
The company needs this analysis completed for a few reasons.
-  Will there be enough employees to fill those positions?
-  Will there be enough time to train or mentor the replacement?

This analysis will provide the company  reports to help prepare for the "silver tsunami" 
The reports will show:
-   The employees are retirement eligible by title.
-   the total count for each title.
-   The employees eligible for the mentorship program
The reports were completed using SQL and DBAs. All Data was exported into to CSV files for the managers. 

## Results
The Results from the analysis shows the following...
1. The employees that eligible for retirement by title.
This table includes all employees that are born between 01-01-1952 and 12-31-1955, past and present.

![retirement_titles](https://user-images.githubusercontent.com/105830665/184924958-c61757e2-b28f-4c6b-abd3-85976e458ecd.png)

2. The employees that are currently employeed with the company that are retirement eligible.
This table includes employees with end dates as 9999-01-01 (employment has not ended).

![Unique_titles](https://user-images.githubusercontent.com/105830665/184925042-3cf5c862-fe58-4cf3-8dd0-f44cc8d05f52.png)

3. The count for each title with retirement eligible employees.
This table includes just the count of each title at the company.

![retiring_titles](https://user-images.githubusercontent.com/105830665/184925118-3e1c8c8d-a615-46e4-94d8-7f41800be7f3.png)

4. The employees eligible vfor mentorship.
This table includes all employees who are eligible for the mentorship program to fill the upcoming vacant positions.
The criteria for the mentorship program was those employees born between 01-01-1965 and 12-31-1965.

![mentorship_eligibilty](https://user-images.githubusercontent.com/105830665/184925242-c5d032ad-0c5b-45f0-881c-fcaaf03137d5.png)

## Summary
As the company prepares for the "silver tsunami", the analysis revealed that the company has over 70,000 employees (72,458)
retiring by titles. 

According to the mentorship eligibility report, there only 1549 employees eligible for mentorship. If every retirement eligible employee left
at this very moment the company does not have remotely enough employees to fill those positions. The company many want to eexpand the criteria
for employees eligible for mentorship to guarantee enough employees to fill the vacant positions.