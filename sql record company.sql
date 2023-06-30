create database record_company;
Use record_company;
create table test(
test_column INT
);
Alter table test
ADD another_column Varchar(255)
drop table;
create table albums (
id int not null auto_increment,
name varchar(255) not null,
release_year int,
band_id int not null,
primary key (id),
foreign key (band_id) references band(id)
);

insert into bands (name)
values ('Duece'), ('avenged sevenfold'), ('ankor');

select * from bands;

select * from bands limit 2;

select name from bands;

select id as 'id', name as 'band name'
from bands;

select * from bands order by name ;

insert into albums (name, release_year, band_id)
values ('the number of the beasts', 1985, 1)
	   ('power slave', 1984,1),
       ('nightmare',2018, 2),
       ('nightmare',2010,3),
       ('test album', null,3);

Select * from albums;

Select distinct name from albums;

update albums
set release_year = 1982
where id = 1;

select * from albums
where release_year < 2000;

select * from albums
where name like '%er%' or band_id = 2;

select * from albums
where release_year = 1984 and band_id = 1;

select * from albums
where release_year between 2000 and 2018;

select * from albums 
where release_year is Null;

Delete from albums where id = 5;

select * from albums; 

select * from bands
inner join albums on bands.id + albums.band_id;

select * from bands
right join albums on bands.id = albums.band_id;

select avg(release_year) from albums;

select sum(release_year) from albums;
