

                    #GROUP BY
				
#select star, count(*) as num_movies from movies group by star order by num_movies desc limit 5;         # Finding which actor act maximum  movies

#select genre, sum(gross - budget) as profit from movies group by genre order by profit desc limit 5;             # Finding which genre make maximum money

#select director, avg(gross - budget) as avg_profit from movies group by director order by avg_profit desc limit 5; #     Finding which director are profitable

#select name, budget from movies group by name order by budget desc limit 10;  # finding which movies highest budget       # Finding which movies are highest budget 

#select name, sum(gross - budget) as total_profit from movies group by name order by total_profit desc limit 5;       # Finding Which movies highest profitable

                                    # HAVING
					
#select genre, avg(votes) as voting from movies group by genre having voting >10000 order by genre desc;


                   # CASE OR if else statement in SQL
/*			
select name, votes,

case
	when max(votes) >= 2400000 then 'Super HIT'
    when min(votes) > 2400000 and min(votes) <= 56705 then 'HIT'
    else
		'FLOP'
end as boxoffice
from movies*/


/*
create table crew(
	c_id integer,
    c_name varchar(255),
    c_department varchar(255)
);*/
/*
create table passenger(
	p_id integer,
    p_name varchar(255),
    p_class varchar(255),
    p_from varchar(255),
    p_to varchar(255),
    p_age integer
);*/

/*insert into crew (c_id,c_name,c_department) values (1,'Smith','Captain'),
													(2,'Wilde','Chief Officer'),
													(3,'Murdoc','First Officer'),
													(4,'Archer','Seaman'),
													(5,'Evans','LookOut');
                                                    
select* from crew;
*/
/*
insert into passenger(p_id,p_name,p_class,p_from,p_to,P_age) values (1,'Allen','1_Class','Southampton','St Louis',29),
																	(2,'Andrews Mr. Thomas','1_Class','Belfast','New York City',39),
																	(3,'Allison','1_Class','Southampton','Canada',2),
																	(4,'Baxter','3_Class','Cherbourg','Canada',24),
																	(5,'Carlsson','2_Class','Southampton','New York City',33),
																	(6,'Carter','1_Class','Southampton','Pennsylvania',36);
select * from passenger;*/


#select * from crew;
#select * from passenger;






                        # INNER JOIN
#select * from crew c join passenger p on p.p_id = c.c_id 

                    # LEFT OUTER JOIN
#select * from passenger p left outer join crew c on p.p_id = c.c_id;

                   # RIGHT OUTER JOIN
#select * from crew c right outer join passenger p on c.c_id = p.p_id;

                  # FULL OUTER JOIN
#select c_id from crew union select p_id from passenger;

/*select * from passenger p left outer join crew c on p.p_id = c.c_id
union
select * from passenger p right outer join crew c on p.p_id = c.c_id;*/



                          # SUBQUERY
                          
#select * from movies where budget = (select max(budget) from movies)  # Independent Query

#select * from movies where star in (select distinct(star) where star like 'A%')





