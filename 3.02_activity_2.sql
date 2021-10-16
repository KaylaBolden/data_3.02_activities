-- Keep working on the bank database.

-- List districts together with total amount borrowed and average loan amount.

select A2 as district
,sum(amount) as totalBorrowed
,round(avg(amount),2) as avgBorrowed
from bank.loan join bank.account using (account_id)
			   join bank.district 
               on district_id = a1
group by a2
order by totalBorrowed;