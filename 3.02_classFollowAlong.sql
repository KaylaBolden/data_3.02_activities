create temporary table bank.loan_and_account
select l.loan_id, l.account_id, a.district_id, l.amount
,l.payments,a.frequency
from bank.loan l
join bank.account a using (account_id);

select * from bank.loan_and_account;

select * from bank.account a1
join bank.account a2
where a1.account_id<>a2.account_id
and a1.district_id=a2.district_id
order by a1.district_id;