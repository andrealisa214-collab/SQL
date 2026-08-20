use my_andrea;
create table journal_table10(
entry_id int,
entry_date varchar(90),
account_name varchar(80),
description varchar(90),
credit int,
debit varchar(100)
);
select *from journal_table10;
INSERT INTO journal_table10
(entry_id, entry_date, account_name, description, debit, credit)
VALUES
(1, '2026-01-01', 'Cash', 'Capital introduced', 50000, 0),

(2, '2026-01-01', 'Capital', 'Capital introduced', 0, 50000),

(3, '2026-01-03', 'Purchases', 'Goods purchased for cash', 20000, 0),

(4, '2026-01-03', 'Cash', 'Goods purchased for cash', 0, 20000),

(5, '2026-01-05', 'Rent', 'Rent paid in cash', 5000, 0),

(6, '2026-01-05', 'Cash', 'Rent paid in cash', 0, 5000),

(7, '2026-01-10', 'Cash', 'Goods sold for cash', 30000, 0),

(8, '2026-01-10', 'Sales', 'Goods sold for cash', 0, 30000),

(9, '2026-01-15', 'Furniture', 'Furniture purchased for cash', 10000, 0),

(10, '2026-01-15', 'Cash', 'Furniture purchased for cash', 0, 10000);
select*from journal_table10;
select
      sum(debit)as total_debit,
      sum(credit) as total_credit 
from journal_table10;

select
 avg(debit)as total_debit,
      avg(credit) as total_credit 
from journal_table10;

select account_name,
 co(debit)as total_debit,
 sum(credit) as total_credit 
from journal_table10;

select
 avg(debit)as total_debit,
      avg(credit) as total_credit 
from journal_table10;

select
 count(*) as total 
from journal_table10;

select
 mim(debit)as debit_minimum,
min(credit) as credit_minimum
from journal_table10;

select
 max(debit)as debit_max,
max(credit) as credit_max
from journal_table10;

select
 count(*) as total 
from journal_table10
group by account_name;

select
 avg(debit)as average_debit,
      avg(credit) as average_credit 
from journal_table10
group by account_name;

select
      sum(debit)as total_debit,
      sum(credit) as total_credit 
from journal_table10
group by account_name
having sum(debit)>15000;

select account_name,
       count(*) as total
from journal_entries
group by account_name
having count(*)>1;

select account_name,
      case
      when sum(debit)>sum(credit)
      then sum(debit)-sum(credit)
	  else 0
    end as debit_balance,
      case
      when sum(credit)>sum(debit)
      then sum(credit)-sum(debit)
      else 0
	end as credit_balance
from journal_entries
group by account_name;