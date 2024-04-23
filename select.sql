-- 2 задание
select name_song, duration from song
where duration = (select max(duration) from song)
limit 1;

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

select count(*) from song
where album = (select id from album where release_data between '2019-01-01' and '2020-01-01')

select album, avg(duration) from song
group by album

select performer from performer
where id in (select performer_id from album_author where album_id not in (select id from album where release_data between '2020-01-01' and '2021-01-01'))

select collection from collection
where id in (select collection_id from song_in_collection where song_id in (select id from song where album in (select album_id from album_author where performer_id = 2)))


-- 4 задание, необязательное, не все
select id, name_song from song
where id not in (select song_id from song_in_collection)

select performer from performer
where id = (select performer_id from album_author where album_id = (select album from song where duration = (select min(duration) from song)))
