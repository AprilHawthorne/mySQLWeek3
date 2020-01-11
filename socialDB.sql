create database if not exists social;

use social;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

CREATE TABLE users (
	id int(11) not null auto_increment,
	username varchar(20) not null,
	password varchar(20) not null,
	email varchar(50) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	primary key (id)
);

CREATE TABLE posts (
	id int(11) not null auto_increment,
	user_id int(11) not null,
	post_text text(65535),
	post_timestamp timestamp,
	primary key (id),
	foreign key (user_id) references users(id)
);

CREATE TABLE comments (
	id int(11) not null auto_increment,
	post_id int(11) not null,
	user_id int (11) not null,
	comment_text text(65535),
	comment_timestamp timestamp,
	primary key (id),
	foreign key (user_id) references users(id),
	foreign key (post_id) references posts(id)
);
