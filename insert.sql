insert into genre(genre)
values ('pop');

insert into genre(genre)
values ('metal');

insert into genre(genre)
values ('electronic');

insert into performer(performer)
values ('The Living Tombstone');

insert into performer(performer)
values ('MiatriSs');

insert into performer(performer)
values ('T.a.T.u.');

insert into performer(performer)
values ('imagine dragons');

insert into perfomer_ganre(performer_id, genre_id)
values ('1', '2');

insert into perfomer_ganre(performer_id, genre_id)
values ('2', '2');

insert into perfomer_ganre(performer_id, genre_id)
values ('3', '1');

insert into perfomer_ganre(performer_id, genre_id)
values ('4', '5');

insert into album(album, release_data)
values ('RadioBunny Ink', '2016.10.20');

insert into album(album, release_data)
values ('200 по встречной', '2001.05.21');

insert into album(album, release_data)
values ('Night Visions', '2012.09.04');

insert into album(album, release_data)
values ('My Ordinary Life', '2017.11.29');

insert into album(album, release_data)
values ('Fly', '2019.10.10')

insert into album_author (performer_id, album_id)
values ('2', '1');

insert into album_author (performer_id, album_id)
values ('3', '2');

insert into album_author (performer_id, album_id)
values ('4', '3');

insert into album_author (performer_id, album_id)
values ('1', '4');

insert into album_author (performer_id, album_id)
values ('1', '5')

insert into song(name_song, album, duration)
values ('Нас не догонят', '2', '00:03:57');

insert into song(name_song, album, duration)
values ('White robe', '2', '00:03:36');

insert into song(name_song, album, duration)
values ('Take me', '1', '00:04:18');

insert into song(name_song, album, duration)
values ('Доброта не в моде', '1', '00:04:57');

insert into song(name_song, album, duration)
values ('Radioactive', '3', '00:03:07');

insert into song(name_song, album, duration)
values ('Demons', '3', '00:02:57');

insert into song(name_song, album, duration)
values ('My Ordinary Life', '3', '00:04:05');

insert into song(name_song, album, duration)
values ('ECHO Crusher-P', '5', '00:03:23')

insert into collection(collection, release_data)
values ('Rus songs', '2012.09.04');

insert into collection(collection, release_data)
values ('gold', '2012.09.04');

insert into collection(collection, release_data)
values ('my collection', '2012.09.04');

insert into song_in_collection(song_id, collection_id)
values ('1', '1');

insert into song_in_collection(song_id, collection_id)
values ('4', '1');

insert into song_in_collection(song_id, collection_id)
values ('1', '2');

insert into song_in_collection(song_id, collection_id)
values ('2', '2');

insert into song_in_collection(song_id, collection_id)
values ('5', '2');

insert into song_in_collection(song_id, collection_id)
values ('1', '3');

insert into song_in_collection(song_id, collection_id)
values ('2', '3');

insert into song_in_collection(song_id, collection_id)
values ('4', '3');

insert into song_in_collection(song_id, collection_id)
values ('5', '3');

insert into song_in_collection(song_id, collection_id)
values ('6', '3');

update collection
set release_data = '2018.12.08'
where id = 2;

update collection
set release_data = '2019.06.11'
where id = 3;

update song
set album = 4
where id = 7;