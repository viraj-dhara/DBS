 INSERT INTO
`sakila`.`actor`(`first_name`,`last_name`)VALUES("BITS","PILANI");

select * from university.department;

insert into university.department(dept_name,building,budget)Values('Bifology','CVR',890976.89);

select * from university.student;

update sakila.actor set actor.last_name='Vidyavihar' where actor.first_name='BITS';

update university.student set tot_cred=200 where student.name='Im';

use university;

delete from student where id = 1968;


select * from student;

-- imporper syntax: select from student;

select * from instructor;

select id, name from instructor;

show tables in university;

select * from course;

select course_id, title, credits from course where dept_name = 'Comp. Sci.';

select * from student where tot_cred >30;

select * from instructor order by salary DESC;

select * from section order by year, semester;

select dept_name, count(*) from course group by dept_name;

select * from instructor;
select dept_name as 'Department Name', avg(salary) as 'Average of Salaries' from instructor group by dept_name;

select * from department where budget > 1000000;

select dept_name, avg(salary) from instructor group by dept_name having avg(salary)>50000 order by avg(salary);

show tables in university;

select distinct building from classroom;

select distinct semester from section;

select count(distinct semester) from section;

-- select * from sakila.customer;
-- show tables in sakila;
-- where salary between 30000 and 50000;


select * from instructor where salary between 30000 and 50000;

show tables;
select * from section where year between 2004 and 2010;
-- above is not complete requirement

select * from section where semester in ('Fall');
-- above is not complete requirement

select * from student where dept_name in ('Math', 'GEOLOGY', 'English');

select * from course where dept_name is null;

select * from course where title like '%data%';

select course_id, title, dept_name, 
case
when credits = 1 then 'Low'
when credits = 2 then 'moderate'
when credits > 2 then 'high'
else 'i dunno bro'
end as credits
from course;



-- excercises

select * from course;
insert into course values (001, 'Weekly Seminar', Null, 2);

select * from section;
insert into section values(001, 1,  'fall', 2017,null, null, null);

select *  from student;
show tables;
select * from takes;
delete from takes where id=12345;


select * from course;
delete from takes where course_id in (
select course_id from course where title like '%Geology%'
);
