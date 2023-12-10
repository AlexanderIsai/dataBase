--Создать таблицы реакций и комментариев
CREATE TABLE reactions (
    reaction_id int,
    created_at timestamp,
    value int,
	author_id int,
    video_id int
);
CREATE TABLE comments (
    comment_id int,
    created_at timestamp,
    message varchar(512),
	author_id int,
    video_id int
);

--Добавить несколько записей в каждую таблицу выше
insert into comments (comment_id, created_at, message, author_id, video_id)
values
    (1, current_timestamp(), 'video top. Author is teh best', 1, 2),
    (2, current_timestamp(), 'I hate this video! Author, go to hell', 2, 2),
    (3, current_timestamp(), 'Author writes his own comments', 3, 2);

insert into reactions (reaction_id, created_at, author_id, reaction_value, video_id)
values
    (1, current_timestamp(), 1, 10, 2),
    (2, current_timestamp(), 2, 1, 2),
    (3, current_timestamp(), 3, 2, 2)
