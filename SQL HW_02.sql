--1)Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--2)Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('Dmitry Krylov'),
	   ('Kovalev Pavel'),
	   ('Rogozin Oleg'),
	   ('Ushat Pomoev'),
	   ('Murat Nastoev'),
	   ('Surgat Otstoev'),
	   ('Liza Evdokimova'),
	   ('Anastasia Krishko'),
	   ('Arina Shelby'),
	   ('Marina Honda'),
	   ('Kimiko Katsuragi'),
	   ('Alex Fercshbaum'),
	   ('Kumar Karim'),
	   ('Ashot Vanshot'),
	   ('Ahmed Ahmelaridibi'),
	   ('Salim Murazi'),
	   ('Paolo Pierro'),
	   ('Sanchez Sukre'),
	   ('Andrey Shilov'),
	   ('Stepan Boiko'),
	   ('Alexey Volkov'),
	   ('Elena Prutko'),
	   ('Daria Shpiler'),
	   ('Beatrix Dagger'),
	   ('Mike Lazovsky'),
	   ('Klop Kloposky'),
	   ('Pheck Phechschevich'),
	   ('Sakura Miako'),
	   ('Lio San'),
	   ('Xu Xiao'),
	   ('Shang Huang'),
	   ('Li Mao'),
	   ('Sun Liao'),
	   ('Djeng Ji'),
	   ('Liu Bei'),
	   ('Shin Peng'),
	   ('Hinata Miamoto'),
	   ('Yuki Shimari'),
	   ('Max Jhonson'),
	   ('Alex Anderson'),
	   ('Ekatirina Ribaeva'),
	   ('Dmitry Gromov'),
	   ('Vladimir Petuhov'),
	   ('Filipp Grozev'),
	   ('Richard Nikson'),
	   ('Michel Henderson'),
	   ('Timur Shibaev'),
	   ('Sasha Red'),
	   ('Jack Jhonson'),
	   ('Nika Solnceva'),
	   ('Anna Soleva'),
	   ('Dmitry Spitsin'),
	   ('Egor Ribakov'),
	   ('Petr Ivanov'),
	   ('Vasiliy Kulakov'),
	   ('Eugene Prussakov'),
	   ('Anton Megunov'),
	   ('Roman Siluanov'),
	   ('Sergey Kozlov'),
	   ('Olga Tumanova'),
	   ('Nadya Ivankova'),
	   ('Rinata Besova'),
	   ('Elena Golovach'),
	   ('Ulia Serova'),
	   ('George Klivmov'),
	   ('Joshua Rikson'),
	   ('Gaben Randomovich'),
	   ('Gordon Freeman'),
	   ('Victor Goltz'),
	   ('Mark Lobov'),
	   ('Semen Grinayev');
	   
--3)Создать таблицу salary
create table Salary(
	id serial primary key,
	monthly_salary int not null
);

--4)Наполнить таблицу salary 15 строками:
insert into Salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	   
--5)Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

--6)Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id,salary_id)
values (3, 7),
	   (1, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 4),
	   (16, 1),
	   (33, 7),
	   (100, 6),
	   (101, 1),
	   (102, 15),
	   (104, 5),
	   (105, 6),
	   (106, 4),
	   (107, 2),
	   (108, 7),
	   (109, 3),
	   (110, 9),
	   (37, 15),
	   (2, 4),
	   (51, 10),
	   (55, 8),
	   (61, 7),
	   (67, 5),
	   (69, 9),
	   (71, 4),
	   (44, 6),
	   (36, 1),
	   (25, 2),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (12, 10),
	   (17, 11),
	   (62, 12),
	   (66, 13);
	  
--7)Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int unique not null
);

--8)Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(40) using role_name::varchar(30);

--9)Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	  
--10)Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id) 
		references employees(id),
	foreign key (role_id)
		references roles(id)
);	  
	  
--11)Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (7, 2),
 	   (20, 4),
 	   (3, 9),
 	   (5, 13),
 	   (23, 4),
 	   (11, 2),
 	   (10, 9),
 	   (22, 13),
 	   (21, 3),
 	   (34, 4),
 	   (6, 7),
 	   (1, 15),
 	   (2, 14),
 	   (4, 1),
 	   (8, 5),
 	   (9, 11),
 	   (12, 12),
 	   (13, 3),
 	   (14, 1),
 	   (15, 12),
 	   (16, 9),
 	   (17, 7),
 	   (18, 8),
 	   (19, 9),
 	   (24, 6),
 	   (25, 5),
 	   (26, 4),
 	   (27, 3),
 	   (28, 2),
 	   (29, 1),
 	   (30, 2),
 	   (31, 3),
 	   (32, 4),
 	   (33, 5),
 	   (35, 6),
 	   (36, 7),
 	   (37, 8),
 	   (38, 9),
 	   (39, 10),
 	   (40, 11);