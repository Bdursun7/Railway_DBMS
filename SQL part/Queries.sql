
----------Queries

----Passengers who are paid their payment with online method

select first_name,last_name 
	from ticket t,passenger p
	where t.passenger_id = p.passenger_id and t.payment_method ='Online'
	
	
-- Most Valuable 3 railway company with respect to total income in last year(SPECIAL QUERY)

select distinct (company_name), total_income 
from company c 
where c.total_income in (select total_income 
from company c
where c.year = 2019
order by c.total_income  desc 
limit 3);
	
	
	

-- A specific train which departures from ISTANBUL and belong to ASLAN company.

select t2.train_name 
from train t2 , train_service ts2 
where t2.company_id ='1-A' and ts2.beginnig = 'ISTANBUL' 


---Ýzmirden kalkan trenin yolcu sayýsý---

--The information of the passengers who have booked ANKARA-ISTANBUL direction but did not come without canceling the ticket in the last three months for each railway company.
select first_name,last_name, age
from passenger p , ticket t , train_service ts 
where p.passenger_id = t.passenger_id and ts.service_id = t.service_id and (ts.beginnig = 'ANKARA' or ts.beginnig = 'ISTANBUL') and ts.seat_check = 'Empty'
and t.status = 'Res' and t.ticket_date between '2020/02/01' and '2020/05/01';


---Total income'ý en fazla olan 3 yýlda.	

----Average price of tickets which have been bought with payment method cash.
select avg(t.price)
from ticket t
where t.payment_method = 'Cash';


---Passengers who are men and above the age 18

select count(gender) as TotalMenAbove18
from passenger p 
where p.gender ='M' and p.age >18;

---- Aslan þirketinin son 3 yýldaki total income'ý
select sum(c.total_income), c.company_name 
from company c 
where c.company_name = 'ASLAN'
group by c.company_name 


-----tren sayýsý bulma
select t.company_id, t.train_name 
from train t 
inner join company c 
on t.company_id = c.company_id 
where t.train_name like 'A%';

---Find all the passengers whose surname starts with letter D and who are male.

(select * from passenger p where p.last_name like 'D%')
intersect 
(select* from passenger p2 where p2.gender = 'M');


----Total female passengers
select count(p.gender), p.gender 
from passenger p 
group by gender 
having p.gender = 'F'

----Passengers' name and  seat number who have paid a price for ticket more than everyone who have paid with cash
select distinct t.seat_number, first_name, last_name
from ticket t, passenger p2 
where p2.passenger_id = t.passenger_id and t.price > all (select price from ticket where t.payment_method = 'Cash');



---Companies which have an income less than Aslan Company 2020

select distinct (c.company_name) 
from company c 
where total_income <some(select total_income from company where company_name = 'ASLAN' and "year" = 2020);


---- Passengers who haven't shared their Email addreses.
select p.first_name, p.last_name 
from passenger p 
where email is  null;


---Find all the passenger whose ID is below or equal to the 13
select p.first_name, p.last_name from passenger p where not exists
(select * from ticket t where p.passenger_id=t.passenger_id and t.passenger_id>13)

