# Pewlett-Hackard-Analysis

## Overview
1. For this project, I used SQL to build an Employee Database for Pewlett Hackard. Since a large number of employees will be retiring over the next few years, the company needs to (1)determine the number of retiring employees per title and (2)identify employees who are eligible to participate in a mentorship program. 

2. In order to build the database, I used Quick DBD to create an Entity Relationship Diagram (ERD) for all the CSV data files.

![EmployeeDB](https://user-images.githubusercontent.com/111243284/195453155-45e63149-3e31-482d-b8c7-1037af472a23.png)



## Results
1. The first table I built was a retirement_titles table, which contained 133,776 rows. From this analysis, I was able to determine that there were 133,776 retirement titles in the table.

![retirement_titles](https://user-images.githubusercontent.com/111243284/195458753-334bb3e4-39fc-4244-bc25-9bca45b4604f.png)

2. I then realized that some employees had switched titles over the years or left the company. In order to count only the unique employees who are still with the company, I had to build a unique_titles table. This new table contained 72,458 rows, which told me that there were 72,458 unique titles.

![unique_titles](https://user-images.githubusercontent.com/111243284/195458796-73e38c40-d0d0-4417-b1af-e3bb4276340f.png)

3. Next, I grouped the titles together and made a retiring_titles table. This displayed the number of retiring employees per title and provided the answers to our first question.

![retiring_titles](https://user-images.githubusercontent.com/111243284/195458827-ae7e0b43-0ae2-43fc-9df4-b5f67c24f138.png)

4. Lastly, I built a mentorship_eligibility table, which contained 1,549 rows. Based on this table, I found 1,549 employees who eligible for the mentorship program.

![mentorship_eligibility](https://user-images.githubusercontent.com/111243284/195458855-a01fe167-4428-47e6-a32f-089159705cdb.png)


## Summary
