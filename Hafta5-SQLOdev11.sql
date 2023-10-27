-- 1.actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

-- actor tablosu için
SELECT first_name FROM actor;

-- customer tablosu için
SELECT first_name FROM customer;

-- 2.actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

SELECT first_name
FROM actor
WHERE first_name IN (SELECT first_name FROM customer);

-- 3.actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

-- actor tablosu için
SELECT first_name
FROM actor
WHERE first_name NOT IN (SELECT first_name FROM customer);

-- customer tablosu için
SELECT first_name
FROM customer
WHERE first_name NOT IN (SELECT first_name FROM actor);