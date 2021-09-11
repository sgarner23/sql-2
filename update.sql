update customer 
set fax = null
where fax is not null;


update customer 
set company = 'Self'
where company is null;

update customer 
set last_name = 'Thompson'
where first_name = 'Julia' and last_name = 'Barnett';

update customer 
set support_rep_id = 4 
where email = 'luisrojas@yahoo.cl';

update track 
set composer = 'The darkness around us'
where genre_id in ( select genre_id
                   from genre 
                   where name = 'Metal'
                   ) 
and composer is null;