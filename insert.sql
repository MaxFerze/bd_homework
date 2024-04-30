insert into genre(genre)
values
	('pop'),
	('metal'),
	('electronic');

insert into performer(performer)
values
	('The Living Tombstone'),
	('MiatriSs'),
	('T.a.T.u.'),
	('imagine dragons');

insert into perfomer_ganre(performer_id, genre_id)
values
	('1', '2'),
	('2', '2'),
	('3', '1'),
	('4', '5');

insert into album(album, release_data)
values
	('RadioBunny Ink', '2016.10.20'),
	('200 по встречной', '2001.05.21'),
	('Night Visions', '2012.09.04'),
	('My Ordinary Life', '2017.11.29'),
	('Fly', '2019.10.10');

insert into album_author (performer_id, album_id)
values
	('2', '1'),
	('3', '2'),
	('4', '3'),
	('1', '4'),
	('1', '5');

insert into song(name_song, album, duration)
values
	('Нас не догонят', '2', '00:03:57'),
	('White robe', '2', '00:03:36'),
	('Take me', '1', '00:04:18'),
	('Доброта не в моде', '1', '00:04:57'),
	('Radioactive', '3', '00:03:07'),
	('Demons', '3', '00:02:57'),
	('My Ordinary Life', '3', '00:04:05'),
	('ECHO Crusher-P', '5', '00:03:23');

insert into collection(collection, release_data)
values
	('Rus songs', '2012.09.04'),
	('gold', '2012.09.04'),
	('my collection', '2012.09.04');

insert into song_in_collection(song_id, collection_id)
values
	('1', '1'),
	('4', '1'),
	('1', '2'),
	('2', '2'),
	('5', '2'),
	('1', '3'),
	('2', '3'),
	('4', '3'),
	('5', '3'),
	('6', '3');

update collection
set release_data = '2018.12.08'
where id = 2;

update collection
set release_data = '2019.06.11'
where id = 3;

update song
set album = 4
where id = 7;