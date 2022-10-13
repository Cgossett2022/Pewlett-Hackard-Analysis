# Pewlett-Hackard-Analysis

## Overview
1. For this project, I used SQL to build an Employee Database for Pewlett Hackard. Since a large number of employees will be retiring over the next few years, the company needs to (1)determine the number of retiring employees per title and (2)identify employees who are eligible to participate in a mentorship program. 

2. In order to build the database, I started by using Quick DBD to create an Entity Relationship Diagram (ERD) for all the original CSV data files.

![EmployeeDB](https://user-images.githubusercontent.com/111243284/195453155-45e63149-3e31-482d-b8c7-1037af472a23.png)

## Results
1. The first new table I built was a retirement_titles table. Based on this table, I was able to determine that there were 133,776 retirement titles, as represented by the number of rows.

![retirement_titles](https://user-images.githubusercontent.com/111243284/195458753-334bb3e4-39fc-4244-bc25-9bca45b4604f.png)

2. I then realized that some employees had switched titles over the years or left the company. In order to count only the unique employees who were still with the company, I had to build a unique_titles table. From this table, I counted 72,458 unique titles.

![unique_titles](https://user-images.githubusercontent.com/111243284/195458796-73e38c40-d0d0-4417-b1af-e3bb4276340f.png)

3. Next, I grouped the titles together and made a retiring_titles table. This displayed the number of retiring employees per title and provided answers for the first question.

![retiring_titles](https://user-images.githubusercontent.com/111243284/195458827-ae7e0b43-0ae2-43fc-9df4-b5f67c24f138.png)

4. Lastly, I built a mentorship_eligibility table, which helped me answer the second question. Based on this table, I found 1,549 employees who were eligible for the mentorship program.

![mentorship_eligibility](https://user-images.githubusercontent.com/111243284/195458855-a01fe167-4428-47e6-a32f-089159705cdb.png)


## Summary
1. In addition to my results, I addressed the following questions: (1)How many roles will need to be filled as the "silver tsuname" begins to make an impact? and (2)Are there enough qualified employees to mentor the next generation?

2. To answer the first question, I created a roles_to_fill table. Based on the results, I found that there will be 90,398 roles that will need to be filled.

3. To answer the second question, I created a qualified_staff table. The results showed that Pewlett Hackard has 41,672 employees who are qualified to serve as mentors.














