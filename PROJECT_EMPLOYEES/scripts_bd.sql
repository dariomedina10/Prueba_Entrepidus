--creating database name with sql code
create database db_employees


--creating database table with sql code

use db_employees

--table employees

if not exists (select * from sysobjects where name='employees' and xtype='U')
    create table employees (
        identification_card varchar(10) not null primary key,
		name text not null,
		last_name text not null,
		adress text not null,
		email text,
		phone text,
		contract_date_from datetime not null,
		date_of_birth text,
		freelace bit,
		hourly_rate money )

		--table users

	if not exists (select * from sysobjects where name='users' and xtype='U')
    create table users (
	user_na varchar(20) primary key not null,
	password text not null,
        name text  not null ,
		last_name text not null
		
		
		 )

-- insert records in users table with sql code

INSERT INTO USERS VALUES ('DARÍO','MEDINA','DARIOMED','famh.1022')
select *from users
		

		select @@servername
	