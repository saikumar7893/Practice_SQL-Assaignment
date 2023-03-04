Task-1:-

    create table worker(
    work_id number(10),
    first_name varchar2(20),
    last_name varchar2(20),
    salary number(10),
    joining_date timestamp,
    department varchar2(20)
    );




    insert into worker values(001,'Monika','Arora',100000,to_timestamp('2014-02-20 09:00:00','yyyy-mm-dd hh24:mi:ss'),'HR');


    insert into worker values(002,'Niharika','Verma',80000,to_timestamp('2014-06-11 09:00:00','yyyy-mm-dd hh24:mi:ss'),'Admin');



    insert into worker values(003,'Vishal','Singhal',300000,to_timestamp('2014-02-20 09:00:00','yyyy-mm-dd hh24:mi:ss'),'HR');


    insert into worker values(004,'Amitabh','Singh',500000,to_timestamp('2014-02-11 09:00:00','yyyy-mm-dd hh24:mi:ss'),'Admin');



    insert into worker values(005,'Vivek','Bhati',500000,to_timestamp('2014-06-11 09:00:00','yyyy-mm-dd hh24:mi:ss'),'Admin');



    insert into worker values(006,'Vipul','Diwan',200000,to_timestamp('2014-06-11 09:00:00','yyyy-mm-dd hh24:mi:ss'),'Account');

 

    insert into worker values(007,'Sathish','Kumar',75000,to_timestamp('2014-01-20 09:00:00','yyyy-mm-dd hh24:mi:ss'),'Account');



    insert into worker values(008,'Geetika','Chauhan',90000,to_timestamp('2014-04-11 09:00:00','yyyy-mm-dd hh24:mi:ss'),'Admin');


   select first_name as worker_name from worker;


   Select INSTR(first_name, BINARY'a') from Worker where first_name = 'Amitabh';


  select replace(first_name,'a','A') from worker;


  select * from worker order by first_name asc;


  select * from worker order by first_name asc,department desc;


  select * from worker where first_name in ('Vipul','Sathish');


  select * from worker where department='Admin';


  select * from worker where first_name like '%a%';



Task 2:-


select * from worker where salary>100000 and salary<=500000;

select * from worker where first_name='     h';

select * from worker where year(joining_date)=2014 and month(joining_date)=2;

SELECT CONCAT(first_name,'',last_name) As Worker_Name, salary
FROM worker 
WHERE work_id IN 
(SELECT work_id FROM worker 
WHERE salary BETWEEN 50000 AND 100000);


























