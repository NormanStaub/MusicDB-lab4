create table Artist (
    id integer primary key autoincrement,
    artistName varchar(64) not null,
    firstActiveYear int,
    numberOfAlbums int
);

create table Artist (
    id integer primary key autoincrement,
    artistName varchar(64) not null,
    firstActiveYear int,
    numberOfAlbums int
);

create table Album (
    id integer primary key autoincrement,
    albumName varchar(64) not null,
    numberOfSongs int,
    albumReleaseDate varchar(64)
);

create table Song (
    id integer primary key autoincrement,
    songName varchar(64),
    songLengthSeconds int,
    isExplicit bit
);
/*

*/

create table SongToArtist_Album (
    id integer primary key autoincrement,
    songID integer not null,
    albumID integer not null,
    artistID integer not null,
    foreign key (songID) references Song(id),
    foreign key (albumID) references Album(id),
	foreign key (artistID) references Artist(id)
);

/*
create table SongToArtist (
    id integer primary key autoincrement,
 	songID integer not null,
	artistID  integer not null,
	foreign key (songID) references Song(id),
	foreign key (artistID) references Artist(id)
);


create table SongToAlbum (
    id integer primary key autoincrement,
 	songID integer not null,
	albumID  integer not null,
	foreign key (songID) references Song(id),
	foreign key (albumID) references Album(id)
);
create table AlbumToArtist (
    id integer primary key autoincrement,
 	albumID integer not null,
	artistID  integer not null,
	foreign key (albumID) references Album(id),
	foreign key (artistID) references Artist(id)
);

SELECT Song.songName from Song
join SongToAlbum STA on Song.id = STA.songID
join AlbumToArtist ATA on Artist.id = ATA.artistID
where Artist.artistName like "Mansur Brown";
 */
