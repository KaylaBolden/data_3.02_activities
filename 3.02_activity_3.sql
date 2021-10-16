-- Create a temporary table district_overview in the bank database 
-- 			which lists districts together with total amount borrowed and average loan amount.
create temporary table bank.district_overview
select A2 as district
,sum(amount) as totalBorrowed
,round(avg(amount),2) as avgBorrowed
from bank.loan join bank.account using (account_id)
			   join bank.district 
               on district_id = a1
group by a2
order by totalBorrowed;

select * from bank.district_overview;