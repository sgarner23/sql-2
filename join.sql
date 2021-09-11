select * from invoice_line
where unit_price > 0.99;

select i.invoice_date, c.first_name, 
c.last_name, i.total
from invoice i
join customer c
on c.customer_id = i.customer_id;

select c.first_name, c.last_name, 
e.first_name, e.last_name
from customer c 
join employee e 
on e.employee_id = c.support_rep_id;

select album.title, artist.name
from album 
join artist
on artist.artist_id = album.artist_id;

select playlist_track.track_id
from playlist_track
join playlist 
on playlist.playlist_id = playlist_track.playlist_id

where playlist.name = 'Music';

select track.name 
from track
join playlist_track
on track.track_id = playlist_track.track_id

where playlist_id = 5;

select t.name as track_names, p.name as playlist_names
from track t 
join playlist_track pt 
on pt.track_id = t.track_id 
join playlist p 
on p.playlist_id = pt.playlist_id;

select t.name, a.title, g.name 
from track t 
join album a on a.album_id = t.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk';

