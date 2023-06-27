          # Q1. Write a query to add multiple cols in a table
          
/*insert into booking values(null,'Sohan'),
						  (null,'Adity'),
						  (null,'Suraj'),
						  (null,'Saloni'),   # Answer
						  (null,'currun'),
						  (null,'Amit'),
						  (null,'Rohit'),
						  (null,'Siraj');

select * from booking;*/

                  # Q2 .Write a query to add/delete multiple cols in a table
/*                  
alter table seniorcitizen
add column s_pastservices varchar(255);*/   # Answer  Add Columns
/*
alter table seniorcitizen
drop s_pastservices;    # Answer Delete columns
select * from seniorcitizen;*/

                        # Q 3.Write a query to find out the 2nd highest value in a table
                        
#use titanic;
#select * from movies;
#select * from movies order by score desc limit 1,1;  # Answer

                     # Q 4. Find max value without using ORDER BY
                     
#alter table movies modify column budget bigint;    # Convert budget columns in integer datatype

#select name, budget from movies where budget = (select max(budget)) # Find Maximum Values

                       # 5. Find managers of all employees
                       
#select d1.fname,d2.fname from detail d1 join detail d2 on d1.managerid=d2.id  # Useing Selfjoin  # Answer


                     # 6. Use of wild cards

#select name from movies where name like 'A____%'  #Answer
#select name from movies where name like '%man'

               # 7. If else based questions
/*
select Name, (SibSp + Parch) as Size,
case
	when (SibSp + Parch) >= 2 then 'LARGE'         # Answer
    when (SibSp + Parch) >= 2 and (SibSp + Parch) <= 5 then 'Medium'
    else 'SMALL'
end as 'Family'
from titanic;*/

            # 8. Find category-wise top value

#select name,genre,score from movies m1 where score = (select max(score) from movies m2 where m1.genre = m2.genre)  # Answer

                           # 9. Find all the duplicate values
						
#select name, count(name) from movies group by name having count(name) > 2 # Finding Duplicates  Single Columns

#select director,writer, count(*) from movies group by director,writer having count(*) >1 # Finding Duplicates Multiple Columns

                       # 10. Joining tables
                       
                       
#select * from crew c join passenger p on c.c_id = p.p_id;  Joining the tables
                         
                         