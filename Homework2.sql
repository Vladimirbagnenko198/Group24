--Создать таблицу employees
	create table employees(
	id serial primary key,
	employee_name varchar(50) not null
	);
-- Наполнить таблицу employees 70 строкам
	insert into employees(employee_name)
	values  ('Robert Scot'), ('Ron Jaff'), ('Ronald Duck'), ('Rassel Craw'), ('Julia Robertson'), ('Orlando Bloom'), ('Jefrey Wild'),('Ronald Reygan'),
		('Bert Scott'),('Jonathan Brady'),('Javier Mitchell'),('Kristin Scott'),('Robert Butler'),('Ann Graham'),('Michael Jones'),('Barbara Cannon'),
		('Robert Jones'),('Carl Stevens'),('Peggy Beck'),('Brandon Potter'),('Ray Sanchez'),('Stanley Watson'),('Barbara Hansen'),('Hilda Washington'),
		('Regina Smith'),('John Lynch'),('Daisy Thompson'),('Lee Jones'),('Joseph Dennis'),('Jason Martin'),('Marvin Hodges'),('Gary Carlson'),
		('Joy Gilbert'),('John Robinson'),('John Robinson'),('Mary Johnson'),('Alan Lewis'),('William Vasquez'),('Pedro Green'),('Nancy Williams'),
		('Lydia Peters'),('Juanita Taylor'),('Ida Tran'),('Mary Howard'),('Dorothy Cooper'),('Jeanette Rodriguez'),('Cheryl Martin'),('Mike Daniels'),
		('Pedro Green'),('Joyce Rodriguez'),('Eroc Ngu'),('Eric Nguyen'),('Gladys Robinson'),('Vernon Mitchell'),('Michael Lee'),('Michael Lee'),
		('Francis Jones'),('Tom Nichols'),('Gregory Weber'),('Danny Williams'),('Patricia Perry'),('Denise George'),('Charles Hines'),('Julie Flores'),
		('Crystal Coleman'),('Christopher Quinn'),('Vincent Alvarez'),('John Vega'),('Paula Burke'),('Richard Miller');
		select * from employees;
--Создать таблицу salary
	create table salary (
	id serial primary key,
	monthly_salary int not null
	);
--Наполнить таблицу salary 15 строками
	insert into salary(monthly_salary)
	values (1000),(1100),(1200),(1300),(1400),(1500),(1600),(1700),(1800),(1900),(2000),(2100),(2200),(2300),(2400),(2500);
	select * from salary;
--Создать таблицу employee_salary
	create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	);
--Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id
	insert into employee_salary(employee_id,salary_id)
	values (7,2),(4,3),(9,12),(55,10),(41,1),(2,10),(10,9),(13,14),(40,7),(1,6),(6,5),(15,16),(17,15),(46,11),
	(11,1),(16,2),(18,16),(20,2),(44,3),(22,10),(24,12),(26,5),(30,13),(32,4),(14,5),(50,9),(27,11),(29,12),(33,11),(47,10),
	(72,1),(74,2),(75,3),(95,5),(78,10),(88,11),(83,14),(77,11),(99,8),(93,14);
	select * from employee_salary;
--Создать таблицу roles
	create table roles (
	id serial primary key,
	role_name int not null unique
	);
--Поменять тип столба role_name с int на varchar(30)
	alter table roles alter column role_name type varchar(30);
--Наполнить таблицу roles 20 строками:
	insert into roles(role_name)
	values ('Junior Python developer'),('Middle Python developer'),('Senior Python developer'),('Junior Java developer'),('Middle Java developer'),
	('Senior Java developer'),('Junior JavaScript developer'),('Middle JavaScript developer'),('Senior JavaScript developer'),('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),('Senior Manual QA engineer'),('Project Manager'),('Designer'),('HR'),('CEO'),('Sales manager'),('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),('Senior Automation QA engineer');
	select * from roles
	--Создать таблицу roles_employee
	create table roles_employee(
	id serial primary key,
	employee_id int not null unique, 
	role_id int not null ,
	foreign key (employee_id)
	references employees(id),
	foreign key (role_id)
	references roles(id)
	); 
--Наполнить таблицу roles_employee 40 строками:
	 insert into roles_employee(role_id,employee_id)
	 values(1,2),(2,1),(4,3),(3,4),(10,5),(8,6),(20,7),(18,8),(5,34),(13,33),(17,38),(15,28),(5,27),(11,22),(14,12),(4,13),(11,40),(8,25),(10,9),(19,11),
	 (14,14),(18,17),(4,15),(9,16),(11,20),(1,21),(15,23),(5,24),(20,26),(1,29),(10,30),(15,31),(17,32),(19,35),(2,36),(4,37),(14,39),(4,10),(3,18),(5,19);
select * from roles_employee

		