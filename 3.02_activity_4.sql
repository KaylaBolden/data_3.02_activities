-- Still working in the bank database, list the clients with no credit card.
select client_id from bank.disp 
left join bank.card using (disp_id)
where card_id is null;
select * from bank.client;