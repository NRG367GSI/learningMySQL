use home_work_3;
CREATE TABLE staff
(
	id SERIAL PRIMARY KEY,
    firstname VARCHAR(16) NOT NULL,
    lastname VARCHAR(16) NOT NULL,
    post VARCHAR(16) NOT NULL,
    seniority INT NOT NULL,
    salary INT NOT NULL,
    age INT NOT NULL
);

INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
	("Вася", "Петров", "Начальник", 40, 100000, 60),
    ("Петр", "Власов", "Начальник", 8, 70000, 30),
    ("Катя", "Катина", "Инженер", 2, 70000, 25),
    ("Саша", "Сасин", "Инженер", 12, 50000, 35),
    ("Иван", "Иванов", "Рабочий", 40, 30000, 59),
    ("Петр", "Петров", "Рабочий", 20, 25000, 40),
    ("Сидр", "Сидров", "Рабочий", 10, 20000, 35),
    ("Антон", "Антонов", "Рабочий", 8, 19000, 28),
    ("Юрий", "Юрков", "Рабочий", 5, 15000, 25),
    ("Максим", "Максимов", "Рабочий", 2, 11000, 22),
    ("Юрий", "Галкин", "Рабочий", 3, 12000, 24),
    ("Людмила", "Маркина", "Уборщик", 10, 10000, 49);
    
    
select * from staff;

SELECT * FROM staff
ORDER BY salary DESC;

SELECT * FROM staff
ORDER BY salary;

SELECT * FROM staff
ORDER BY salary DESC
LIMIT 5;

SELECT post, SUM(salary) AS sum_salary FROM staff
GROUP BY post;

SELECT post, COUNT(*) FROM staff
WHERE age BETWEEN 24 AND 49
GROUP BY post;

SELECT post, COUNT(post) FROM staff
GROUP BY post;

SELECT post, AVG(age) FROM staff
GROUP BY post
HAVING AVG(age) < 30;