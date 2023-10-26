-- 1.film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.

SELECT DISTINCT replacement_cost
FROM film;

-- 2.film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?

SELECT COUNT(DISTINCT replacement_cost) AS farkli_deger_sayisi
FROM film;

-- 3.film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?

SELECT COUNT(*) AS film_sayisi
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4.country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?

SELECT COUNT(*) AS ulke_sayisi
FROM country
WHERE LENGTH(country) = 5;

-- 5.city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?

SELECT COUNT(*) AS sehir_sayisi
FROM city
WHERE RIGHT(city, 1) IN ('R', 'r');