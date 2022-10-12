# Pewlett-Hackard-Analysis

## Overview
1. For this project, I used SQL to build an Employee Database for Pewlett Hackard. Since a large number of employees will be retiring over the next few years, the company needs to (1)determine the number of retiring employees per title and (2)identify employees who are eligible to participate in a mentorship program. 

2. In order to build the database, I used Quick DBD to create an Entity Relationship Diagram (ERD) for all the CSV data files.

![EmployeeDB](https://user-images.githubusercontent.com/111243284/195453155-45e63149-3e31-482d-b8c7-1037af472a23.png)



## Results
1. The first table I built was a retirement_titles table, which contained 133,776 rows. From this analysis, I was able to determine that there were 133,776 retirement titles in the table

![image](https://user-images.githubusercontent.com/111243284/195454732-d2dfe84f-dac5-4488-9ab4-ee5a40dccc2d.png)

2. I then realized that some employees had switched titles over the years or left the company. In order to count only the unique employees who are still with the company, I had to build a unique_titles table. This new table contained 72,458 rows, which told me that there were 72,458 unique titles.

![image](https://user-images.githubusercontent.com/111243284/195455282-10f7ecb9-2c09-4d8e-9446-d855b7d5f43d.png)

3. Next, I grouped the titles together and made a retiring_titles table. This displayed the number of retiring employees per title and provided the answers to our first question.

![image](https://user-images.githubusercontent.com/111243284/195457068-e6043c36-a9f1-4eca-93ab-ad1d0164ec51.png)

4. Lastly, I built a mentorship_eligibility table, which contained 1,549 rows. Based on this table, I found 1,549 employees who eligible for the mentorship program.

![image](https://user-images.githubusercontent.com/111243284/195457922-07002a8e-28d1-4577-b9b1-bf92dd65cafb.png)


## Summary
