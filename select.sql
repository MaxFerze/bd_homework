-- 2 задание
select name_song, max(duration) from song
group by name_song
order by max(duration) desc

select name_song, duration from song
where duration > '00:03:30'

select collection, release_data from collection
where release_data between '2018-01-01' and '2020-01-01'

select performer from performer
where performer not like '% %'

select name_song from song
where lower(name_song) like '%my%' or lower(name_song) like '%мой%'


-- 3 задание
select count(performer_id), genre_id from perfomer_ganre pg
group by genre_id

select count(*) from song s
join album a on s.id = a.id
where a.release_data between '2019-01-01' and '2020-01-01'

select album, avg(duration) from song
group by album

select distinct performer from performer p
join album_author aa on p.id = aa.performer_id
where album_id not in (select id from album where release_data between '2020-01-01' and '2021-01-01')

select collection from collection c
join song_in_collection sic on c.id = sic.collection_id
join song s on sic.song_id = s.id
join album_author aa on s.album = aa.album_id
where performer_id = 2




-- 4 задание, необязательное, не все
select id, name_song from song
where id not in (select song_id from song_in_collection)

select performer from performer p
join album_author aa on p.id = aa.performer_id
join song s on aa.album_id = s.album
where duration = (select min(duration) from song)