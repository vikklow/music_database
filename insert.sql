PRAGMA foreign_keys = ON;

-- Жанры
INSERT INTO Genres (name) VALUES
('Рок'),
('Поп'),
('Шансон'),
('Рэп/Хип-хоп'),
('Электроника'),
('Русский рок');

-- Исполнители
INSERT INTO Artists (name) VALUES
('Кино'),
('Мумий Тролль'),
('Михаил Круг'),
('Баста'),
('Земфира'),
('Ленинград'),
('Сплин'),
('Noize MC');

-- Связь исполнителей с жанрами
INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Кино' AND g.name = 'Русский рок';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Кино' AND g.name = 'Рок';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Мумий Тролль' AND g.name = 'Рок';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Мумий Тролль' AND g.name = 'Поп';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Михаил Круг' AND g.name = 'Шансон';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Баста' AND g.name = 'Рэп/Хип-хоп';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Баста' AND g.name = 'Поп';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Земфира' AND g.name = 'Рок';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Земфира' AND g.name = 'Поп';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Ленинград' AND g.name = 'Рок';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Ленинград' AND g.name = 'Поп';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Ленинград' AND g.name = 'Электроника';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Сплин' AND g.name = 'Рок';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Сплин' AND g.name = 'Русский рок';

INSERT INTO Artist_Genre (artist_id, genre_id)
SELECT a.id, g.id FROM Artists a, Genres g
WHERE a.name = 'Noize MC' AND g.name = 'Рэп/Хип-хоп';

-- Альбомы
INSERT INTO Albums (title, year) VALUES 
('Группа крови', 1988),
('Морская', 1997),
('Жиган-лимон', 1994),
('Баста 1', 2006),
('Прости меня моя любовь', 2000),
('Горгород', 2015),
('Гранатовый альбом', 1998),
('Выход в город', 2021),
('Последний герой', 2020),
('40 тысяч верст', 2020);

-- Связь исполнителей с альбомами
INSERT INTO Artist_Album (artist_id, album_id) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (1, 9), (2, 10);

-- Треки
INSERT INTO Tracks (title, duration, album_id) VALUES 
('Группа крови', 289, 1),
('Звезда по имени Солнце', 226, 1),
('Владивосток 2000', 239, 2),
('Утекай', 236, 2),
('Владимирский централ', 276, 3),
('Кольщик', 248, 3),
('Моя игра', 317, 4),
('Ростов', 284, 4),
('Искала', 238, 5),
('Почему', 256, 5),
('Экспонат', 321, 6),
('В Питере - пить', 297, 6),
('Орбит без сахара', 215, 7),
('Выхода нет', 247, 7),
('Вселенная бесконечна', 187, 8),
('Станция метро "Спортивная"', 196, 8),
('Кукушка', 304, 9),
('Следи за собой', 275, 9),
('Алё', 189, 10),
('Космические силы', 203, 10),
('my own', 180, 1),
('own my', 180, 1),
('my', 180, 1),
('oh my god', 180, 1),
('myself', 180, 1),
('by myself', 180, 1),
('bemy self', 180, 1),
('myself by', 180, 1),
('by myself by', 180, 1),
('beemy', 180, 1),
('premyne', 180, 1);

-- Сборники
INSERT INTO Collections (title, year) VALUES 
('Легенды русского рока', 2010),
('Золото шансона', 2015),
('Нашествие: лучшие хиты', 2018),
('Русский рэп: новое поколение', 2021),
('Главные песни 90-х', 2019),
('Хиты 2020', 2022);

-- Связь сборников с треками
INSERT INTO Collection_Track (collection_id, track_id) VALUES 
(1, 1), (1, 2), (1, 17),
(2, 5), (2, 6),
(3, 3), (3, 4), (3, 13), (3, 14),
(4, 15), (4, 16),
(5, 5), (5, 6), (5, 9), (5, 10),
(6, 17), (6, 18), (6, 19), (6, 20);