drop table if exists debates;
create table debates (
  did integer primary key autoincrement,
  uid integer,
  title text not null,
  text text not null,
  sidea text not null, 
  sideb text not null,
  rating integer default 0
);

drop table if exists arguments;
create table arguments (
  aid integer primary key autoincrement,
  did integer, 
  uid integer,
  side integer,
  argument text not null,
  rating integer default 0
);

drop table if exists users;
create table users (
  uid integer primary key autoincrement,
  username text not null,
  password text not null,
  rating integer default 0
)