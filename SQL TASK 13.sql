create database permissions;
use permissions;
create table customer1335 (
	customerid int primary key,
    customername varchar(50),
    email varchar (100)
);
 
create table transactions12(
	transactionID int primary key,
    customerid varchar(50),
    amount decimal(10,2),
    transactionsdate date,
    foreign key(customerid) reference customer1335(customerid)
    );
    
create table salaries123(
	employeeid int primary key,
    employeename varchar(50),
     amount decimal(10,2)
);

create user "manager"@"localhost" identified by "manager@123";

create user "accountant"@"localhost" identified by "account@123";

create user "clerk"@"localhost" identified by "clerk@123";

grant select on permission.*
to  "manager"@"localhost";

grant select, insert, update
on permissions.transactions12
to "accountant"@"localhost" ;

grant select 
on permissions.customer1335
to "clerk"@"localhost" ;

grant select 
on permissions.transactions12
to"accountant"@"localhost" ;

revoke delete 
on financial_db.transactions12
from "accountant"@"localhost";

show grants for  "manager"@"localhost";
show grants for  "accountant"@"localhost";
show grants for  "clerk"@"localhost";


