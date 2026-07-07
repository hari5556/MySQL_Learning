select now();

select date(now()); --display the current date part only

select curdate(); --display the current data in the year-month-date format

select date_format(curdate(),"%d%m%Y");  --To change the default date format

select datediff(curdate(), "2021/02/03");  --It will mention the difference between the mentioned date

select date_add(curdate(), interval 1 week); --It will help us to check the 1 week after date from the current date
