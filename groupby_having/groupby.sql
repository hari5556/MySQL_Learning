/*
id | first_name | last_name | department | job_title | salary | hire_date | age | city | gender
---|------------|-----------|------------|-----------|--------|------------|-----|-----------|--------
1 | John | Smith | IT | Software Engineer | 85000 | 2020-01-15 | 28 | New York | M
2 | Emily | Johnson | IT | Software Engineer | 82000 | 2021-03-10 | 26 | San Francisco | F
3 | Michael | Brown | IT | Senior Developer | 105000 | 2018-06-20 | 35 | New York | M
4 | Sarah | Davis | IT | DevOps Engineer | 92000 | 2019-09-05 | 30 | Chicago | F
5 | David | Wilson | IT | Software Engineer | 78000 | 2022-01-10 | 24 | Austin | M
6 | Lisa | Anderson | IT | Database Admin | 88000 | 2020-11-01 | 32 | San Francisco | F
7 | Robert | Martinez | IT | Software Engineer | 81000 | 2021-07-15 | 27 | Chicago | M
8 | Jennifer | Taylor | HR | HR Manager | 75000 | 2017-04-12 | 42 | New York | F
9 | James | Thomas | HR | Recruiter | 55000 | 2020-08-20 | 29 | Los Angeles | M
10 | Jessica | Moore | HR | Training Specialist | 62000 | 2019-12-01 | 33 | Chicago | F
11 | Daniel | Jackson | HR | Recruiter | 53000 | 2022-03-15 | 25 | Austin | M
12 | Ashley | White | HR | HR Coordinator | 48000 | 2023-01-10 | 23 | New York | F
13 | Christopher | Harris | Finance | Finance Manager | 98000 | 2016-09-01 | 45 | New York | M
14 | Amanda | Martin | Finance | Accountant | 68000 | 2019-05-20 | 31 | Chicago | F
15 | Matthew | Thompson | Finance | Financial Analyst | 72000 | 2020-10-15 | 29 | San Francisco | M
16 | Melissa | Garcia | Finance | Accountant | 65000 | 2021-08-01 | 27 | Los Angeles | F
17 | Kevin | Robinson | Finance | Auditor | 77000 | 2018-03-10 | 38 | Austin | M
18 | Rachel | Clark | Finance | Financial Analyst | 69000 | 2021-11-20 | 30 | New York | F
19 | Brian | Lewis | Marketing | Marketing Manager | 82000 | 2019-07-01 | 39 | Chicago | M
20 | Karen | Lee | Marketing | Digital Marketer | 58000 | 2021-02-14 | 26 | San Francisco | F
*/

--1. To create the result each department avg salary
select department,avg(salary) as salary from employees group by department;

--2.To check how many members present in each department
select department,count(id) as no_of_members from employees group by department;

--3. To check which department have more than one number of employees
select department, count(id) as no_of_members from employees group by department having count(id) > 1;
--where used for row filters, having used for group filters

--4. To check which department have more than one number of employees receiving the salary more than 50000
select department, count(id) as no_of_members from employees where salary >= 50000 group by department having count(id) > 1;
