INSERT INTO countries (name, initials) VALUES
('Colombia', 'COL'),
('Argentina', 'ARG'),
('Brazil', 'BRZ'),
('MEXICO', 'MXC');

INSERT  INTO companies (name, currency) VALUES
('Mel', 'DOGE'),
('Ceiba', 'HUGS'),
('Scotia', 'PIZZAS'),
('Koneta', 'LIES');

INSERT INTO languages (name) VALUES
('spanish'),
('english'),
('portuguese');

INSERT INTO programing_languages (name, stack) VALUES
('golang','backend'),
('js','frontend'),
('cobol','stone_age');

INSERT INTO developers (available, email,name, last_name, location_id,nationality_id,salary_expectation,
                        salary_expectation_currency) VALUES
(true,'cheems_burguer@gmailo.com','Julian','Cruz',2,2,8000,'USD'),
(false,'face_of_monda@hotloco.com', 'Eder', 'Fernanadez',2,2, 8000, 'USD'),
(true,'daviplata@xd.com', 'Diego', 'Avila',2,2, 1000, 'EUR');

INSERT INTO contracts (developer_id,company_id,start_date,active,salary, end_date) VALUES
(1,1,now(),false,5000, '2018-01-27'),
(2,2,now(),true,8000, null),
(3,3,now(),true,9000, null);

INSERT INTO developers_languages(developer_id, language_id) VALUES
(1,1),
(2,2),
(3,3);

INSERT INTO developers_programingLanguages (developer_id, programing_language_id) VALUES
(1,1),
(2,2),
(3,3);
