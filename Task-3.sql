    create table salesman(
    salesman_id number(10),
    name varchar2(20),
    city varchar2(20),
    commission number(10)
    );




insert into salesman values(5501,'JamesHoog','NewYork',0.15);



insert into salesman values(5502,'NailKnite','Paris',0.13);



insert into salesman values(5505,'PitAlex','London',0.11);



insert into salesman values(5506,'McLyon','Paris',0.14);



insert into salesman values(5507,'PaulAdam','Rome',0.13);



insert into salesman values(5503,'LausenHen','SanJose',0.12);





    create table customer(
    customer_id number(10),
    cust_name varchar2(20),
    city varchar2(20),
    grade number(5),
    salesman_id number(10));



insert into customer values(3002,'Nick Rimando','NewYork',100,5001);



insert into customer values(3007,'Brand Davis','NewYork',200,5001);



insert into customer values(3005,'Graham Zusi','California',200,5002);


insert into customer values(3008,'Julian Green','London',300,5002);



insert into customer values(3004,'Fabian Johnson','Paris',300,5006);



insert into customer values(3004,'Geoff Cameron','Berlin',100,5003);


insert into customer values(3003,'Jozy Altidor','Moscow',200,5007);


insert into customer values(3001,'Brad Guzan','London',null,5005);




select salesman.name AS "Salesman",customer.cust_name, customer.city from salesman,
customer where salesman.city=customer.city;

select a.cust_name as "Customer Name",a.city, b.name as "Salesman", b.commission from 
customer a inner join salesman b on a.salesman_id=b.salesman_id;


select a.cust_name AS "Customer Name", a.city, b.name as "Salesman", b.commission from customer a inner join salesman b on a.salesman_id=b.salesman_id where b.commission>.12;




