CREATE TABLE IF NOT EXISTS countries (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    initials VARCHAR(5) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS companies (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS programing_languages (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(30) NOT NULL,
    stack  VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS languages (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS  developers (
    id INT AUTO_INCREMENT NOT NULL,
    available BOOLEAN NOT NULL,
    email VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    location_id INT NOT NULL,
    nationality_id INT NOT NULL,
    salary_expectation FLOAT NULL,
    salary_expectation_currency VARCHAR(10) NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (location_id) REFERENCES countries(id),
    FOREIGN KEY (nationality_id) REFERENCES countries(id)
);

CREATE TABLE IF NOT EXISTS developers_programingLanguages (
    developer_id INT NOT NULL,
    programing_language_id INT NOT NULL,
    PRIMARY KEY (developer_id, programing_language_id),
    FOREIGN KEY (developer_id) REFERENCES developers(id),
    FOREIGN KEY (programing_language_id) REFERENCES programing_languages(id)
);

CREATE TABLE IF NOT EXISTS  developers_languages (
    developer_id INT NOT NULL,
    language_id INT NOT NULL,
    PRIMARY KEY (developer_id, language_id),
    FOREIGN KEY (developer_id) REFERENCES developers(id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS contracts (
    developer_id INT NOT NULL,
    company_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    active BOOLEAN NOT NULL,
    salary FLOAT,
    PRIMARY KEY (developer_id, company_id, start_date),
    FOREIGN KEY (developer_id) REFERENCES developers(id),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);
