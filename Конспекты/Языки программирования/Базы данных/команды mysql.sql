AS - задает новое имя полям или таблицам при выборке из базы (то есть в самой базе изменения не происходят).
AND - (также называемый оператор AND) используется для проверки двух или более условий в операторе SELECT, INSERT, UPDATE или DELETE.
OR - используется для проверки двух или более условий, когда возвращаются записи, те у которых какое-либо из условий истинно. Он может использоваться в операторах SELECT, INSERT, UPDATE или DELETE.
AND и OR - могут комбинироваться в операторах SELECT, INSERT, UPDATE или DELETE.
LIKE - позволяет использовать шаблоны в операторе WHERE для оператора SELECT, INSERT, UPDATE или DELETE. Это позволяет выполнять сопоставление шаблонов.
IN - используется, чтобы уменьшить необходимость использования нескольких условий OR в операторе SELECT, INSERT, UPDATE или DELETE.
NOT - (также называемое оператором NOT) используется для отрицания условия в операторе SELECT, INSERT, UPDATE или DELETE.
IS NULL - используется для проверки значения NULL в операторах SELECT, INSERT, UPDATE или DELETE.
IS NOT NULL - используется для проверки значения NOT NULL в операторах SELECT, INSERT, UPDATE или DELETE.
BETWEEN - используется для извлечения значений внутри диапазона в операторе SELECT, INSERT, UPDATE или DELETE.
EXISTS - используется в сочетании с подзапросом и считается «удовлетворяемым», если подзапрос возвращает хотя бы одну строку. Он может использоваться в операторах SELECT, INSERT, UPDATE или DELETE.

SELECT - используется для извлечения записей из одной или нескольких таблиц в MySQL.
SELECT LIMIT - используется для извлечения записей из одной или нескольких таблиц в MySQL и ограничения количества возвращаемых записей на основе предельного значения.
FROM  - используется для отображения таблиц и любых объединений, необходимых для запроса в MySQL.
DISTINCT - используется для удаления дубликатов из набора результатов. Оператор DISTINCT может использоваться только с операторами SELECT.
WHERE - используется для фильтрации результатов в операторах SELECT, INSERT, UPDATE или DELETE.
ORDER BY - используется для сортировки записей в вашем результирующем наборе.
	ASC - необязательный. Сортирует результирующий набор по expression в порядке возрастания (по умолчанию, если атрибут не указан).
	DESC - необязательный. Сортирует результирующий набор по expression в порядке убывания.
GROUP BY - используется в SELECT предложении для сбора данных по нескольким записям и группировки результатов по одному или нескольким столбцам.
HAVING - используется в сочетании с оператором GROUP BY, чтобы ограничить группы возвращаемых строк только тех, чье условие TRUE.
INSERT - используется для вставки одной записи или нескольких записей в таблицу в MySQL.
UPDATE - используется для обновления существующих записей в таблице в базе данных MySQL. Существует три синтаксиса для оператора UPDATE в зависимости от типа обновления, которое вы хотите выполнить.
DELETE - используется для удаления одной записи или нескольких записей из таблицы в MySQL.
DELETE LIMIT - используется для удаления записей из таблицы в MySQL и ограничения количества записей, удаленных на основе предельного значения.
TRUNCATE TABLE - используется для очищения всех записей из таблицы в MySQL. Он выполняет ту же функцию, что и оператор DELETE, без предложения WHERE.
UNION - используется для объединения наборов результатов из 2 или более SELECT предложений. Он удаляет повторяющиеся строки между различными предложениями SELECT.
UNION ALL - используется для объединения наборов результатов из 2 или более предложений SELECT. Он возвращает все строки из запроса и не удаляет повторяющиеся строки между различными предложениями SELECT.
Joins - используются для извлечения данных из нескольких таблиц. JOIN выполняется всякий раз, когда две или более таблиц объединяются в SQL предложении.
https://oracleplsql.ru/mysql-manual.html

Строковые функции:
------------------------------
1. CONCAT(str1, str2, ...)
Возвращает строку, являющуюся результатом конкатенации аргументов. Если хотя бы один из аргументов равен NULL, возвращается NULL. Может принимать более 2 аргументов. Числовой аргумент преобразуется в эквивалентную строковую форму

2. CONCAT_WS(separator, str1, str2, ...)
Функция CONCAT_WS() обозначает CONCAT With Separator (конкатенация с разделителем) и представляет собой специальную форму функции CONCAT(). Первый аргумент является разделителем для остальных аргументов. Разделитель, так же как и остальные аргументы, может быть строкой. Если разделитель равен NULL, то результат будет NULL. Данная функция будет пропускать все величины NULL и пустые строки, расположенные после аргумента-разделителя. Разделитель будет добавляться между строками, подлежащими конкатенации

3. LENGTH(str) - возвращает длину строки в байтах.
CHAR_LENGTH(str) - возвращает кол-во символов.
CHARACTER_LENGTH(str) - возвращает кол-во символов.

4. LOCATE(substr,str)
Возвращает позицию первого вхождения подстроки substr в строку str. Если подстрока substr в строке str отсутствует, возвращается 0

5. LEFT(str,len) - извлекает подстроку из строки str, начиная с самого левого символа. len количество символов, которое вы хотите извлечь из строки, начиная с самого левого символа.

6. RIGHT(str,len) - извлекает подстроку из строки str, начиная с самого правого символа. len количество символов, которое вы хотите извлечь из строки, начиная с самого правого символа.

7. SUBSTRING(str,pos,len)
Возвращает подстроку длиной len символов из строки str, начиная от позиции pos. Данная функция поддерживает многобайтные величины

8. SUBSTRING(str,pos)
Возвращает подстроку из строки str, начиная с позиции pos. Данная функция поддерживает многобайтные величины

9. SUBSTRING_INDEX(str,delim,count)
Возвращает подстроку из строки str перед появлениям count вхождений разделителя delim. Если count положителен, то возвращается все, что находится слева от последнего разделителя (считая слева). Если count отрицателен, то возвращается все, что находится справа от последнего разделителя (считая справа). Данная функция поддерживает многобайтные величины

10. LTRIM(str)
Возвращает строку str с удаленными начальными пробелами. Данная функция поддерживает многобайтные величины

11. RTRIM(str)
Возвращает строку str с удаленными конечными пробелами. Данная функция поддерживает многобайтные величины

12. TRIM([[BOTH | LEADING | TRAILING] [remstr] FROM] str)
Возвращает строку str с удаленными всеми префиксами и/или суффиксами, указанными в remstr. Если не указан ни один из спецификаторов BOTH, LEADING или TRAILING, то подразумевается BOTH. Если аргумент remstr не задан, то удаляются пробелы: 
mysql> SELECT TRIM(' bar ');
        -> 'bar'
mysql> SELECT TRIM(LEADING 'x' FROM 'xxxbarxxx');
        -> 'barxxx'
mysql> SELECT TRIM(BOTH 'x' FROM 'xxxbarxxx');
        -> 'bar'
mysql> SELECT TRIM(TRAILING 'xyz' FROM 'barxxyz');
        -> 'barx'
Данная функция поддерживает многобайтные величины

13. REPLACE(str,from_str,to_str)
Возвращает строку str, в которой все вхождения строки from_str заменены на to_str. Данная функция поддерживает многобайтные величины

14. LCASE(str), LOWER(str)
Возвращает строку str, в которой все символы переведены в нижний регистр. Данная функция поддерживает многобайтные величины

15. UCASE(str), UPPER(str)
Возвращает строку str, в которой все символы переведены в верхний регистр. Данная функция поддерживает многобайтные величины

===========================================
Функции сравнения строк
===========================================
SELECT 'a' REGEXP 'a'; 1

===========================================
Математические функции
===========================================
1. ABS(X)
Возвращает абсолютное значение величины X

2. SIGN(X)
Возвращает знак аргумента в виде -1, 0 или 1, в зависимости от того, является ли X отрицательным, нулем или положительным

3. MOD(N,M)
Значение по модулю. Возвращает остаток от деления N на M

4. FLOOR(X)
Округляет дробь в меньшую сторону

5. CEILING(X), CEIL(X)
Округляет дробь в большую сторону

6. ROUND(X)
Округляет дробь по правилам математики. Применять с осторожностью - зависит от приложения

7. ROUND(X,D)
Возвращает аргумент X, округленный до числа с D десятичными знаками. Если D равно 0, результат будет представлен без десятичного знака или дробной части

8. POW(X,Y), POWER(X,Y)
Возвращает значение аргумента X, возведенное в степень Y

9. SQRT(X)
Возвращает неотрицательный квадратный корень числа X

10. RAND()
Возвращает случайную величину с плавающей точкой в диапазоне от 0 до 1,0

11. TRUNCATE(X,D)
Возвращает X, усеченный до D количества знаков после десятичной точки. Если D представлен нулем, результат будет без десятичной точки или дробной части. Если D отрицательно, то часть числа обнуляется.

===========================================
Функции даты и времени
===========================================

1. NOW(), SYSDATE(), CURRENT_TIMESTAMP
Возвращает текущую дату и время как величину в формате YYYY-MM-DD HH:MM:SS или YYYYMMDDHHMMSS, в зависимости от того, в каком контексте используется функция - в строковом или числовом.
Заметьте, что NOW() вычисляется только единожды для каждого запроса, а именно - в начале его выполнения. Это позволяет быть уверенным в том, что множественные ссылки на NOW() в рамках одного запроса дадут одно и то же значение

2. CURDATE(), CURRENT_DATE
Возвращает сегодняшнюю дату как величину в формате YYYY-MM-DD или YYYYMMDD, в зависимости от того, в каком контексте используется функция - в строковом или числовом

3. CURTIME(), CURRENT_TIME 
Возвращает текущее время как величину в формате HH:MM:SS или HHMMS, в зависимости от того, в каком контексте используется функция - в строковом или числовом

4. DAYOFWEEK(date)
Возвращает индекс дня недели для аргумента date (1 = воскресенье, 2 = понедельник, ... 7 = суббота). Эти индексные величины соответствуют стандарту ODBC.

5. WEEKDAY(date)
Возвращает индекс дня недели для аргумента date (0 =понедельник, 1 = вторник, ... 6 = воскресенье)

6. DAY(date), DAYOFMONTH(date)
Возвращает порядковый номер дня месяца для аргумента date в диапазоне от 1 до 31

7. DAYOFYEAR(date)
Возвращает порядковый номер дня года для аргумента date в диапазоне от 1 до 366

8. MONTH(date)
Возвращает порядковый номер месяца в году для аргумента date в диапазоне от 1 до 12

9. DAYNAME(date)
Возвращает название дня недели для аргумента date

10. MONTHNAME(date) || SET lc_time_names = 'ru_RU'
Возвращает название месяца для аргумента date

11. QUARTER(date)
Возвращает номер квартала года для аргумента date в диапазоне от 1 до 4

12. YEAR(date)
Возвращает год для аргумента date в диапазоне от 1000 до 9999 или 0 для "zero" даты

13. HOUR(time)
Возвращает час для аргумента time в диапазоне от 0 до 23

14. MINUTE(time)
Возвращает количество минут для аргумента time в диапазоне от 0 до 59

15. SECOND(time)
Возвращает количество секунд для аргумента time в диапазоне от 0 до 59

16. PERIOD_ADD(P,N)
Добавляет N месяцев к периоду P (в формате YYMM или YYYYMM). Возвращает величину в формате YYYYMM. Следует учитывать, что аргумент периода P не является значением даты

17. PERIOD_DIFF(P1,P2)
Возвращает количество месяцев между периодами P1 и P2. P1 и P2 должны быть в формате YYMM или YYYYMM. Следует учитывать, что аргументы периода P1 и P2 не являются значениями даты

18. DATE_ADD(date,INTERVAL expr type) син. ADDDATE(date,INTERVAL expr type); ADDDATE(expr,days)
DATE_SUB(date,INTERVAL expr type) син. SUBDATE(date,INTERVAL expr type); SUBDATE(expr,days) 
Данные функции производят арифметические действия над датами. Обе являются нововведением версии MySQL 3.22. Функции ADDDATE() и SUBDATE() - синонимы для DATE_ADD() и DATE_SUB(). В версии MySQL 3.23 вместо функций DATE_ADD() и DATE_SUB() можно использовать операторы + и -, если выражение с правой стороны представляет собой столбец типа DATE или DATETIME. Аргумент date является величиной типа DATETIME или DATE, задающей начальную дату. Выражение expr задает величину интервала, который следует добавить к начальной дате или вычесть из начальной даты. Выражение expr представляет собой строку, которая может начинаться с - для отрицательных значений интервалов. Ключевое слово type показывает, каким образом необходимо интерпретировать данное выражение. Вспомогательная функция EXTRACT(type FROM date) возвращает интервал указанного типа (type) из значения даты.

19. EXTRACT(type FROM date)
Типы интервалов для функции EXTRACT() используются те же, что и для функций DATE_ADD() или DATE_SUB(), но EXTRACT() производит скорее извлечение части из значения даты, чем выполнение арифметических действий

20. DATE_FORMAT(date,format)
Форматирует величину date в соответствии со строкой format

21. TIME_FORMAT(time,format)
Данная функция используется аналогично описанной выше функции DATE_FORMAT(), но строка format может содержать только те определители формата, которые относятся к часам, минутам и секундам. При указании других определителей будет выдана величина NULL или 0

22. SEC_TO_TIME(seconds)
Возвращает аргумент seconds, преобразованный в часы, минуты и секунды, как величину в формате HH:MM:SS или HHMMSS, в зависимости от того, в каком контексте используется функция - в строковом или числовом

23. TIME_TO_SEC(time)
Возвращает аргумент time, преобразованный в секунды

24. DATE(expr)
Возвращает часть, отвечающую за дату

25. TIME(expr)
Возвращает часть, отвечающую за время

26. DATEDIFF(expr1, expr2)
Возвращает разницу дат.

27. TO_DAYS(date)
Возвращает количество дней от "нулевого" года



Набор признаков реляционной БД

1. Данные хранятся в двумерных таблицах, состоящих из столбцов (поля) и строк (ряды).
2. На пересечении ряда и поля содержится только 1 значение.
3. Поля имеют имя, и значения в поле должны быть одного типа.
4. Поля в таблицах расположены в порядке, определенном при создании и должно быть как минимум 1 поле.
5. Сервер возвращает результат запроса в виде таблиц.

TINYINT SIGNED  -128 127
TINYINT UNSIGNED 0 255 (2^8 = 256) 

DECIMAL(6,2) UNSIGNED 9999.99
FLOAT(6,2)

3.4432E2 10^2=100

Слово != слово  bin
Слово == слово  ci

======================
INSERT INTO `customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clemens', 'London', 100, 1001),
(2008, 'Cisneros', 'San Jose', 300, 1007),
(2007, 'Pereira', 'Rome', 100, 1004),
(2010, 'Dickens', 'LA', NULL, 1001);
====================

INSERT INTO `orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES
(3001, 18.69, '1990-03-10', 2008, 1007),
(3003, 767.19, '1990-03-10', 2001, 1001),
(3002, 1900.10, '1990-03-10', 2007, 1004),
(3005, 5160.45, '1990-03-10', 2003, 1002),
(3006, 1098.16, '1990-03-10', 2008, 1007),
(3009, 1713.23, '1990-04-10', 2002, 1003),
(3007, 75.75, '1990-04-10', 2004, 1002),
(3008, 4723.00, '1990-05-10', 2006, 1001),
(3010, 1309.95, '1990-06-10', 2004, 1002),
(3011, 9891.88, '1990-06-10', 2006, 1001);
=====================


INSERT INTO `salers` (`snum`, `sname`, `city`, `comm`) VALUES
(1001, 'Peel', 'London', 0.12),
(1002, 'Serres', 'San Jose', 0.13),
(1004, 'Motika', 'London', 0.11),
(1007, 'Rifkin', 'Barcelona', 0.15),
(1003, 'Axelrod', 'New York', 0.10);



SELECT * FROM orders; Выбрать все поля из таблицы orders

-- 2 
SELECT onum, amt, odate, cnum, snum FROM orders; Выбрать поля onum, amt, odate, cnum, snum из таблицы orders

-- 3
SELECT amt, odate FROM orders; Выбрать поля amt, odate из таблицы orders

-- 4
SELECT DISTINCT odate FROM orders; Выбрать поля odate из таблицы orders и вернуть уникальные значени

-- 5 
SELECT odate, amt FROM orders WHERE odate = '1990-04-10'; Выбрать поля amt, odate из таблицы orders где

-- 6 
SET NAMES cp866;

-- Реляционные операторы или операторы сравнения
-- "=" равенство
-- ">" больше чем
-- "<" меньше чем
-- ">=" больше или равно
-- "<=" меньше или равно
-- "<>", "!=" неравенство

-- 7
SELECT amt FROM orders WHERE amt > 1000;

-- 8
SELECT sname, city FROM salers WHERE city <> 'London';

-- 9
SELECT sname, city FROM salers WHERE sname > 'Motika';

-- 0123ABCD...Zabcd...zА-Яа-я
-- A < D, A > 3, R < Rifkin
--- 3 > 2

-- 10
SELECT * FROM orders WHERE odate > '1990-04-10';

-- AND (И), OR (ИЛИ), NOT (НЕ)

-- 11
SELECT * FROM orders WHERE amt > 1000 AND odate = '1990-06-10';

-- 12
SELECT amt FROM orders WHERE amt > 1000 AND amt < 4000;

-- 13
SELECT * FROM salers WHERE city = 'London' AND comm > 0.11;

-- 14
SELECT * FROM salers WHERE city = 'London' OR comm > 0.11;

-- 15
SELECT * FROM customers WHERE NOT city = 'London';

-- 16
SELECT * FROM  orders 
		WHERE NOT ((odate = '1990-03-10' AND snum > 1002) OR amt > 2000.00);
-- инвертированный результат 3003, 3009, 3007, 3010
-- результат без инверсии (без учета NOT) 3001, 3002, 3006, 3005, 3008, 3011


- 1
SELECT sname, city FROM salers WHERE city = 'London' OR city = 'New York';

-- 2
SELECT sname, city FROM salers WHERE city IN ('London', 'New York', 'Barcelona');

-- 3
SELECT * FROM salers WHERE comm IN (0.11, 0.12, 0.13, 0.15);

-- 4
SELECT * FROM salers WHERE comm BETWEEN 0.11 AND 0.15;

-- 5
SELECT * FROM salers WHERE (comm BETWEEN 0.11 AND 0.15) AND comm NOT IN (0.11, 0.15);

-- 6
SELECT sname FROM salers WHERE sname BETWEEN 'A' AND 'N';

-- 7
SELECT * FROM salers WHERE sname IS NULL;

-- 8
SELECT sname FROM salers WHERE sname IS NOT NULL;

-- 9  "%" - любое кол-во любых символов
SELECT * FROM salers WHERE sname LIKE 'Mot%';

-- 10
SELECT * FROM salers WHERE sname LIKE '%kin';

-- 11  "_" - 1 любой символ
SELECT * FROM salers WHERE sname LIKE 'P__l';

-- 12
SELECT * FROM salers WHERE sname LIKE '\_';

-- 13
SELECT * FROM salers WHERE sname LIKE '\%';

-- 14
SELECT * FROM salers WHERE sname = 'd\'Artanian';

-- 15
SELECT * FROM salers WHERE sname LIKE '%fk%';

-- 16
SELECT * FROM salers WHERE sname NOT LIKE '%fk%';

-- 1 
SELECT COUNT(sname) FROM salers;

-- 2 
SELECT COUNT(city) FROM salers;

-- 3
SELECT COUNT(*) FROM salers;

-- 4
SELECT COUNT(DISTINCT city) FROM salers;

-- 5
SELECT COUNT(*) AS res FROM salers;

-- 6
SELECT SUM(amt) AS res FROM orders;

-- 7
SELECT AVG(amt) AS res FROM orders;

-- 8
SELECT MIN(amt) AS res FROM orders;

-- 9
SELECT MAX(amt) AS res FROM orders;

-- 10
SELECT MIN(sname) FROM salers;

-- 11
SELECT MAX(sname) FROM salers;

-- 12
SELECT snum, MAX(amt) FROM orders WHERE snum = 1007;

-- 13
SELECT snum, MAX(amt) FROM orders GROUP BY snum;

-- 14
SELECT snum, MAX(amt) AS res FROM orders GROUP BY snum HAVING res > 2000;

-- 15
SELECT snum, MAX(amt) FROM orders GROUP BY snum HAVING COUNT(snum) > 2;

-- 1
SELECT sname, comm FROM salers;

-- 2
SELECT sname, comm*100 FROM salers;

-- 3
SELECT sname, comm*100, '%' FROM salers;

-- 4
SELECT * FROM orders ORDER BY onum;

-- 5
SELECT * FROM salers ORDER BY sname ASC;

-- 6
SELECT * FROM salers ORDER BY sname DESC;

-- 7
SELECT snum, amt, odate FROM orders ORDER BY snum, amt;

-- 8
SELECT snum, amt, odate FROM orders ORDER BY snum DESC, amt DESC;

-- 9
SELECT snum, MAX(amt), odate FROM orders GROUP BY snum;

-- 10
SELECT snum, odate, MAX(amt) FROM orders GROUP BY snum ORDER BY 3;

-- 11
SELECT * FROM salers LIMIT 2;

-- 12
SELECT * FROM salers LIMIT 0, 2;

-- 13
SELECT * FROM salers ORDER BY snum DESC LIMIT 1;

-- 14
SELECT sname, cname FROM salers, customers;

-- 15
SELECT salers.sname, customers.cname, salers.city FROM salers, customers;

-- 16
SELECT salers.sname, customers.cname, salers.city FROM salers, customers WHERE salers.snum = customers.snum;

-- 17
SELECT salers.sname, customers.cname, salers.city FROM salers, customers WHERE salers.snum = customers.snum ORDER BY salers.sname;

-- 18
SELECT s.sname, c.cname, s.city FROM salers s, customers c WHERE s.snum = c.snum ORDER BY s.sname;


-- 1
SELECT CONCAT(sname, city) FROM salers;

-- 2
SELECT CONCAT(sname, ' ', city) AS res FROM salers;

-- 3
SELECT CONCAT_WS(' ', sname, city) AS res FROM salers;

-- 4
SELECT sname, LENGTH(sname) FROM salers;

-- 5
SELECT sname, CHAR_LENGTH(sname) FROM salers;

-- 6
SELECT sname, CHARACTER_LENGTH(sname) FROM salers;

-- 7
SELECT * FROM salers WHERE CHAR_LENGTH(sname) <= 6;

-- 8
SELECT * FROM salers WHERE LOCATE('kin', sname);

-- 9
SELECT * FROM salers WHERE LOCATE('\'', sname);

-- 10
SELECT odate, LEFT(odate,7) FROM orders;

-- 11
SELECT odate, RIGHT(odate,5) FROM orders;

-- 12
SELECT odate, SUBSTRING(odate,6) FROM orders;

-- 13
SELECT odate, SUBSTRING(odate,1,7) FROM orders;

-- 14
SELECT odate, SUBSTRING_INDEX(odate, '-', 2) FROM orders;

-- 15
SELECT LTRIM('string   ');

-- 16
SELECT RTRIM('   string');

-- 17
SELECT LTRIM(RTRIM('   string   ')) AS res;

-- 18
SELECT TRIM('   string   ') AS res;

-- 19
SELECT TRIM(TRAILING '-10' FROM odate) FROM orders;

-- 20
SELECT TRIM(LEADING '1990-' FROM odate) FROM orders;

-- 21
SELECT TRIM(BOTH 'xx' FROM 'xxbarxx');

-- 22
SELECT comm, REPLACE(comm, '0.', '') AS res FROM salers;

-- 23
SELECT LOWER(sname) FROM salers;

-- 24
SELECT LCASE(sname) FROM salers;

-- 25
SELECT UPPER(sname) FROM salers;

-- 26
SELECT UCASE(sname) FROM salers;


-- 1
SELECT 'a' REGEXP 'a'; -- 1

-- 2
SELECT 'a' REGEXP 'b'; -- 0

-- 3
SELECT * FROM salers WHERE sname REGEXP '[a-z]';

-- 4
SELECT * FROM salers WHERE sname REGEXP '[а-я]';

-- 5
SELECT * FROM salers WHERE sname REGEXP '[a-zа-я]';

-- 6
SELECT * FROM salers WHERE sname REGEXP '^s';

-- 7
SELECT * FROM salers WHERE sname REGEXP 'n$';

-- 8
SELECT * FROM salers WHERE sname REGEXP '^[^r].*';

-- 9
SELECT * FROM salers WHERE sname REGEXP '^[^r]*$';

-- 10
SELECT * FROM salers WHERE sname REGEXP '[r]{2}';

-- 11
SELECT * FROM salers WHERE sname REGEXP '\'';

-- 12
SELECT * FROM salers WHERE sname REGEXP '(r){2}';

-- 12
SELECT * FROM salers WHERE sname REGEXP '(rr)';

-- 13
SELECT comm, ABS(comm) AS res FROM salers;

-- 14
SELECT comm, SIGN(comm) AS res FROM salers;

-- 15
SELECT * FROM salers WHERE SIGN(comm) = -1;

-- 16
SELECT MOD(5,2); -- 1
SELECT MOD(5,2); -- 0

-- 17
SELECT comm, FLOOR(comm) FROM salers;

-- 18
SELECT comm, CEIL(comm) FROM salers;

-- 19
SELECT ROUND(2.6);

-- 20
SELECT comm, ROUND(comm, 1) FROM salers;
SELECT comm, ROUND(comm, 0) FROM salers;

-- 21
SELECT POW(3,2);

-- 22
SELECT SQRT(9);

-- 23
SELECT * FROM salers ORDER BY RAND() LIMIT 1;

-- 24
SELECT comm, TRUNCATE(comm, 1) FROM salers;



-- 1
SELECT NOW();

-- 2
SELECT SYSDATE();

-- 3
SELECT CURRENT_TIMESTAMP;

-- 4
SELECT NOW() + 0;

-- 5
SELECT NOW(), SLEEP(2), NOW();

-- 6
SELECT SYSDATE(), SLEEP(2), SYSDATE();

-- 7
SELECT CURDATE(); -- CURRENT_DATE

-- 8
SELECT CURTIME(); -- CURRENT_TIME

-- 9
SELECT odate, DAYOFWEEK(odate) FROM orders;

-- 10
SELECT DAYOFWEEK(NOW());

-- 11
SELECT odate, WEEKDAY(odate) FROM orders;

-- 12
SELECT odate, DAY(odate) FROM orders; -- DAYOFMONTH()

-- 13
SELECT DAYOFYEAR(NOW());

-- 14
SELECT odate, MONTH(odate) FROM orders;

-- 15
SELECT DAYNAME(NOW());

-- 16
SELECT @@lc_time_names;

-- 17
SET lc_time_names = 'ru_Ru';

-- 18
SELECT MONTHNAME(NOW());

-- 19
SELECT DAY(NOW()), MONTHNAME(NOW());

-- 20
SELECT CONCAT_WS(' ', DAY(NOW()), MONTHNAME(NOW())) AS date;

-- 21
SELECT QUARTER(NOW());

-- 22
SELECT odate, YEAR(odate) FROM orders;

-- 24
SELECT NOW(), HOUR(NOW());

-- 25
SELECT NOW(), MINUTE(NOW());

-- 26
SELECT NOW(), SECOND(NOW());

-- 27 3/03/2012
SELECT NOW(), DATE_FORMAT(NOW(), '%e/%m/%Y');

-- 28 3 марта 2012
SELECT NOW(), DATE_FORMAT(NOW(), '%e %M %Y');

-- 29
SELECT PERIOD_ADD(DATE_FORMAT(NOW(), '%Y%m'), 2);

-- 30
SELECT PERIOD_ADD(201203, 2);

-- 31
SELECT PERIOD_DIFF(201205, 201203);

-- 32
SELECT NOW(), ADDDATE(NOW(), INTERVAL 1 SECOND);

-- 33
SELECT NOW(), ADDDATE(NOW(), INTERVAL 2 MINUTE);

-- 34
SELECT NOW(), ADDDATE(NOW(), INTERVAL '2:5' DAY_HOUR);

-- 35
SELECT NOW(), NOW() + INTERVAL 1 HOUR;

-- 36
SELECT NOW(), NOW() - INTERVAL 1 HOUR;

-- 37
SELECT NOW(), SUBDATE(NOW(), INTERVAL 2 HOUR);

-- 38
SELECT NOW(), ADDDATE(NOW(), 10);

-- 39
SELECT NOW(), SUBDATE(NOW(), 10);

-- 40
SELECT NOW(), EXTRACT(MINUTE FROM NOW());

-- 41
SELECT NOW(), TIME_FORMAT(NOW(), '%H:%i');

-- 42
SELECT SEC_TO_TIME(60);

-- 43
SELECT TIME_TO_SEC('1:00:00');

-- 44
SELECT NOW(), DATE(NOW());

-- 45
SELECT NOW(), TIME(NOW());



-- 1 Объединение таблицы с собой... получаем пары заказчиков с одинаковыми рейтингами
SELECT f.cname, s.cname, f.rating FROM customers f, customers s WHERE f.rating = s.rating;

-- 2 Объединение таблицы с собой... получаем пары заказчиков с одинаковыми рейтингами - устраняем избыточность
SELECT f.cname, s.cname, f.rating FROM customers f, customers s WHERE f.rating = s.rating AND f.cname > s.cname;

-- 3 Объединение таблицы с собой... выбор нескольких продавцов в 1 городе
SELECT f.sname, s.sname, s.city FROM salers f, salers s WHERE f.city = s.city AND f.sname < s.sname;

-- 4 Выборка всех клиентов продавца
SELECT cname FROM customers WHERE snum = (SELECT snum FROM salers WHERE sname = 'Peel');

-- 5 Запрос, возвращающий ошибку, поскольку результатом подзапроса есть множество
SELECT * FROM orders WHERE snum = (SELECT snum FROM salers WHERE city = 'London');

-- 6 Тот же запрос, но без ошибки
SELECT * FROM orders WHERE snum IN (SELECT snum FROM salers WHERE city = 'London');

-- 7 Выборка продавцов с более чем 1 клиентом
SELECT snum, sname FROM salers WHERE snum IN (SELECT snum FROM customers GROUP BY snum HAVING COUNT(snum) > 1);

-- 8 Выбор продавцов без клиентов
SELECT snum, sname FROM salers WHERE snum NOT IN (SELECT snum FROM customers);

-- 9 Соотнесенный подзапрос... выборка всех клиентов за апрель
SELECT * FROM customers c WHERE '1990-04-10' IN (SELECT odate FROM orders o WHERE o.cnum = c.cnum);

-- 10 Тот же результат, но с объединением таблиц на основе справочной целостности
SELECT o.cnum, c.cname, c.city, c.rating, c.snum FROM orders o, customers c WHERE c.cnum = o.cnum AND odate = '1990-04-10';



-- Выборка из таблицы продавцов только в случае, если есть клиенты с рейтингом больше 100 TRUE
SELECT * FROM salers WHERE EXISTS (
	SELECT * FROM customers WHERE rating > 100
);

-- FALSE
SELECT * FROM salers WHERE EXISTS (
	SELECT * FROM customers WHERE rating < 100
);

-- Выборка продавцов из Сан-Хосе только в том случае, если есть клиенты с рейтингом больше 100 TRUE
SELECT * FROM salers WHERE city = 'San Jose' AND EXISTS (
	SELECT cnum FROM customers WHERE rating > 100
);

-- FALSE
SELECT * FROM salers WHERE city = 'San Jose' AND EXISTS (
	SELECT cnum FROM customers WHERE rating > 400
);

-- EXISTS с соотнесенным подзапросом... получаем продавцов, у которых есть клиенты
SELECT * FROM salers s WHERE EXISTS (
	SELECT * FROM customers c WHERE s.snum = c.snum
);

-- EXISTS с соотнесенным подзапросом... получаем продавцов без клиентов
SELECT snum, sname FROM salers s WHERE NOT EXISTS (
	SELECT cnum FROM customers c WHERE s.snum = c.snum
);

-- UNION выборка продавцов и клиентов
SELECT snum, sname FROM salers
UNION
SELECT cnum, cname FROM customers;

-- количество полей в запросах должно совпадать... ERROR!
SELECT snum, sname, city FROM salers
UNION
SELECT cnum, cname FROM customers;

-- дубликаты значений опускаются
SELECT snum, city FROM salers
UNION
SELECT snum, city FROM customers;

-- включение дубликатов
SELECT snum, city FROM salers
UNION ALL
SELECT snum, city FROM customers;



-- JOIN
-- INNER JOIN
-- LEFT OUTER JOIN
-- RIGHT OUTER JOIN
-- !FULL OUTER JOIN!
-- CROSS JOIN

-- 1
SELECT * FROM salers INNER JOIN customers ON customers.snum = salers.snum;

-- 2
SELECT * FROM salers JOIN customers ON customers.snum = salers.snum;

-- 3
SELECT s.sname, c.cname, s.city FROM salers s INNER JOIN customers c ON c.snum = s.snum;

-- 4
SELECT s.sname, c.cname, s.city FROM salers s, customers c WHERE c.snum = s.snum; 

-- 5
SELECT s.sname, c.cname, s.city FROM salers s INNER JOIN customers c ON c.snum = s.snum WHERE s.city = 'London';

-- 6
SELECT s.sname, c.cname, s.city FROM salers s LEFT OUTER JOIN customers c ON c.snum = s.snum;

-- 7
SELECT s.sname, c.cname, s.city FROM salers s RIGHT OUTER JOIN customers c ON c.snum = s.snum;

-- 8 ERROR!
SELECT s.sname, c.cname, s.city FROM salers s FULL OUTER JOIN customers c ON c.snum = s.snum;

-- 9
SELECT s.sname, c.cname, s.city FROM salers s LEFT OUTER JOIN customers c ON c.snum = s.snum
UNION
SELECT s.sname, c.cname, s.city FROM salers s RIGHT OUTER JOIN customers c ON c.snum = s.snum;

-- 10
SELECT s.sname, c.cname, s.city FROM salers s CROSS JOIN customers c;

-- 11 Полнотекстовый поиск
SELECT * FROM customers WHERE MATCH (text) AGAINST ('test');

-- 12 Полнотекстовый поиск в режиме естественного языка (NATURAL LANGUAGE MODE) морфология не поддерживается
SELECT * FROM customers WHERE MATCH (text) AGAINST ('программирование');

-- 13 Полнотекстовый поиск... в режиме NATURAL LANGUAGE MODE имеется порог шумовых слов = 50%
SELECT * FROM customers WHERE MATCH (text) AGAINST ('mysql');

-- 14
SELECT * FROM customers WHERE MATCH (text) AGAINST ('php' IN NATURAL LANGUAGE MODE);

-- 15 Полнотекстовый поиск в булевом режиме (BOOLEAN MODE) поддерживается морфология
SELECT * FROM customers WHERE MATCH (text) AGAINST ('программ*' IN BOOLEAN MODE);

-- 16
SELECT * FROM customers WHERE MATCH (text) AGAINST ('+php -mysql' IN BOOLEAN MODE);



-- 1 Создание БД
CREATE DATABASE IF NOT EXISTS `sql2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- 2 Создание таблиц
CREATE TABLE [IF NOT EXISTS] `tbl_name` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM;

-- 3 Создание копии таблицы
CREATE TABLE customers2 SELECT * FROM customers;

-- 4 Просмотр структуры таблицы
DESCRIBE `tbl_name`;
DESC `tbl_name`;

-- 5 INSERT
INSERT INTO customers2(cname, city, rating, snum, text) VALUES ('Вася Пупкин', 'Васюки', 150, 1002, 'Какой-то текст');
INSERT INTO customers2 SET cname='Вася Пупкин', city='Васюки', rating=150, snum=1002, text='Какой-то текст';

-- 6 UPDATE
UPDATE customers2 SET cname='John Doe', city='LA' WHERE cnum=2013;

-- 7 DELETE
DELETE FROM customers2 WHERE cname='вася пупкин';

-- 8 DROP
DROP TABLE [IF EXISTS] `tbl_name`;
DROP DATABASE [IF EXISTS] `db_name`;