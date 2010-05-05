\r mysql

create database git ;

grant all on git.* to dpavlin ;

\r git

create table log (
	id integer primary key not null auto_increment,
	hash varchar(40) not null,
	parent varchar(40) not null,
	timestamp datetime not null,
	subject text not null
);

create unique index log_hash on log(hash);

