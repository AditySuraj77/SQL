
# create database volvo;                        #simple createdatabase 


 #create database if not exists lufthansa;       # createdatabase this command first check if database exists or not
 /*create database if not exists apple;       # createdatabase this command first check if database exists or not
 create database if not exists pineapple;       # createdatabase this command first check if database exists or not
 create database if not exists banana;       # createdatabase this command first check if database exists or not
 create database if not exists orange;*/       # createdatabase this command first check if database exists or not




/*drop database apple;          
drop database pineapple;
drop database banana;             # Drop DataBases
drop database orange;
drop database volvo;*/
#drop database if exists irctc;

#use lufthansa;  # this command make allowed to use database

/*create table if not exists passenger(
	p_id int unique,
    name varchar(250),
    lastname varchar(250),         # Creating table in databases
    age int,
    from_to varchar(250),
    to_to varchar(250)
) ;*/

/*insert into passenger(id, name ,lastname,age,from_to,to_to) values(1,'Rohan','Das',26,'Kolkata','Pune');  #insering data
insert into passenger(id, name ,lastname,age,from_to,to_to) values(1,'Rohan','Das',26,'Kolkata','Pune');
insert into passenger(id, name ,lastname,age,from_to,to_to) values(1,'Rohan','Das',26,'Kolkata','Pune');*/

#drop table passenger;   Delelte table command

#truncate passenger;   # this command Empty all data in present passenger tables


#select * from passenger   # this command showing data present into passenger tables 

               # NOT NULL Constraints in SQL

/*create table crew(
	id int not null,
    name varchar(200),
    full_name varchar(300),
    status varchar(200),
    Duration_of_expiernece int
);*/

#insert into crew(id, name ,full_name, status, Duration_of_expiernece) values(1,'vikram','vikramsingh','co-pilot',40);
      # in insert command if you not fill id_no so insert command not will executed   # NULL Constraint
#select * from crew

#drop table crew;

/*               # Unique Constraints in SQL
create table crew(
	id int not null,
    name varchar(200),
    full_name varchar(300),
    status varchar(200) unique,
    Duration_of_expiernece int
);

insert into crew(id, name ,full_name, status, Duration_of_expiernece) values(1,'vikram','vikramsingh','co-pilot',40);
insert into crew(id, name ,full_name, status, Duration_of_expiernece) values(2,'sahil','sahildey','co-pilot',28);
      # in insert command if you not fill status as double same values insert command not will executed   # Unique Constraint
      # Error Code: 1062. Duplicate entry 'co-pilot' for key 'crew.status'	0.015 sec thorow error  # Unique Constraints
select * from crew*/

#drop table crew;

/*               # Primary key Constraints in SQL
create table crew(
	id int  primary key,
    name varchar(200),
    full_name varchar(300),
    status varchar(200),
    Duration_of_expiernece int
);

insert into crew(id, name ,full_name, status, Duration_of_expiernece) values(1,'vikram','vikramsingh','co-pilot',40);
insert into crew(id, name ,full_name, status, Duration_of_expiernece) values(2,'sahil','sahildey','co-pilot',28);
      # Creating Id to Primary Keys 
select * from crew*/


                              # Foreign key Constraints in SQL
                              
/*create table airlinedetail(
	crew_id integer,
    passenger_id integer,
    Times datetime,
    primary key(crew_id),
    foreign key(passenger_id)references passenger(p_id)
    
)*/

#drop tables passenger; # We cannot drop passenger tables because it is foreign key
#Error Code: 3730. Cannot drop table 'passenger' referenced by a foreign key constraint 'airlinedetail_ibfk_1' on table 'airlinedetail'.


                          # Check Constraints in SQL
                          
/*create table seniorcitizen(
	s_id integer not null primary key,
    s_name varchar(200),
    s_age integer check (s_age > 60)
);*/

#insert into seniorcitizen(s_id,s_name,s_age) values (1,'Gyan',50); # This command not run because s_age is less than 60 
#insert into seniorcitizen(s_id,s_name,s_age) values (1,'Gyan',65);

                               # DEFAULT Constraints in SQL         
                               
/*create table booking(
	p_id int primary key,
    p_name varchar(255),
    p_gender varchar(255),
    p_time datetime default current_timestamp
);*/

#insert into booking(p_id,p_name,p_gender,p_time) values (1,'Sameera','F',current_time());


                               # AUTO_ENCREAMENT Constraints in SQL 
                               
#drop tables booking;


/*create table booking(
	p_id int primary key auto_increment,
    p_name varchar(255) not null
);*/

/*insert into booking(p_name) values ('Ram'),
									('Rohan'),
                                    ('Sohan');*/





                   # ALTER TABLES
                   
#alter table airlinedetail add column airline_name varchar(255) not null;       #Add columns in tables

#alter table passenger drop column to_to;        # Delete Columns in tables

#alter table booking rename column p_name to Passeneger_Name;   # Rename columns in tables

# alter table booking modify column Passeneger_Name text;     # Modify the of datatype columns





                               
                               