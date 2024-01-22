-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student(student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar)

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student add column middle_name varchar

-- 3. Удалить колонку middle_name
ALTER TABLE student drop column middle_name

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student rename column birthday to birth_date

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student alter column phone set data type varchar(32)

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO student (first_name, last_name, birth_date, phone)
VALUES('Василий', 'Васильев', '1999-02-02', 89127773331);
INSERT INTO student (first_name, last_name, birth_date, phone)
VALUES('Иван', 'Иванов', '1998-12-10', 89127773332);
INSERT INTO student (first_name, last_name, birth_date, phone)
VALUES('Пётр', 'Петров', '1999-01-09', 89127773333);

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
truncate TABLE student restart IDENTITY