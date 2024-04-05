create table if not exists Genre (
	id SERIAL primary key,
	genre text unique not null
);

create table if not exists Performer (
	id SERIAL primary key,
	performer text  not null
);

create table if not exists Album (
	id SERIAL primary key,
	album text  not null,
	release_data date not null
);

create table if not exists Collection (
	id SERIAL primary key,
	collection text  not null,
	release_data date not null
);

create table if not exists Perfomer_ganre (
	genre_id integer references Genre(id),
	performer_id integer references Performer(id),
	constraint performer_ganre primary key (genre_id, performer_id)
);

create table if not exists Album_author (
	album_id integer references Album(id),
	performer_id integer references Performer(id),
	constraint aa primary key (album_id, performer_id)
);

create table if not exists Song (
	id SERIAL primary key,
	name_song text not null,
	album integer not null references Album(id),
	duration time not null
);

create table if not exists Song_in_collection (
	song_id integer references Song(id),
	collection_id integer references Collection(id),
	constraint song_collection primary key (song_id, collection_id)
);