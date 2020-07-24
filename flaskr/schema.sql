DROP TABLE  IF exists user;
DROP TABLE IF EXISTS post;

create TABLE  user(
    id INTEGER PRIMARY key autoincrement,
    username text unique not null,
    password text not null

);

create table post(
    id integer  primary key  autoincrement,
    author_id integer not null,
    created timestamp not null default current_timestamp ,
    title text not null,
    body text not null,
    foreign key (author_id) references user  (id)
)

