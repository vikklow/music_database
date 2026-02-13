--Задание 2
--Название и продолжительность самого длинного трека
SELECT title, duration 
FROM Tracks 
ORDER BY duration DESC 
LIMIT 1;

--Название треков продолжительностью не менее 3,5 минут
SELECT title 
FROM Tracks 
WHERE duration >= 210 
ORDER BY duration;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title 
FROM Collections 
WHERE year BETWEEN 2018 AND 2020 
ORDER BY year;

--Исполнители, чье имя состоит из одного слова
SELECT name 
FROM Artists 
WHERE name NOT LIKE '% %' 
  AND name NOT LIKE '%-%'
ORDER BY name;

--Название треков, в которых есть слово «мой» или «my»
SELECT title
FROM Tracks 
WHERE title LIKE 'my'
    OR title LIKE 'my %'
    OR title LIKE '% my'
    OR title LIKE '% my %'
    OR title LIKE 'мой'
    OR title LIKE 'мой %'
    OR title LIKE '% мой'
    OR title LIKE '% мой %'
ORDER BY title;

--Задание 3
--Количество исполнителей в каждом жанре
SELECT g.name AS genre_name, COUNT(ag.artist_id) AS artists_count
FROM Genres g
LEFT JOIN Artist_Genre ag ON g.id = ag.genre_id
GROUP BY g.id, g.name
ORDER BY artists_count DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(t.id) AS tracks_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.id
WHERE a.year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков в каждом альбоме
SELECT a.title AS album_title, AVG(t.duration) AS average_duration
FROM Albums a
JOIN Tracks t ON a.id = t.album_id
GROUP BY a.id, a.title
ORDER BY average_duration DESC;

--Все исполнители, не выпустившие альбомы в 2020 году
SELECT ar.name AS artist_name
FROM Artists ar
WHERE ar.id NOT IN (
    SELECT DISTINCT aa.artist_id
    FROM Artist_Album aa
    JOIN Albums al ON aa.album_id = al.id
    WHERE al.year = 2020
)
ORDER BY ar.name;

--Названия сборников, в которых представлен конкретный исполнитель (выбираю "Кино")
SELECT DISTINCT c.title AS collection_title, c.year
FROM Collections c
JOIN Collection_Track ct ON c.id = ct.collection_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Albums a ON t.album_id = a.id
JOIN Artist_Album aa ON a.id = aa.album_id
JOIN Artists ar ON aa.artist_id = ar.id
WHERE ar.name = 'Кино'
ORDER BY c.year;