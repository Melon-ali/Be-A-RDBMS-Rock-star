-- Active: 1760498874497@@127.0.0.1@5432@ph
SELECT * from person;


ALTER TABLE person
    ADD COLUMN email VARCHAR(25) NOT NULL DEFAULT 'default@gmail.com';
ALTER TABLE person
    DROP COLUMN email

INSERT into person values(8, 'melon2', 45, 'melon@gmail.com')

ALTER TABLE person
    RENAME COLUMN age TO user_age;
ALTER TABLE person
  alter COLUMN first_name type varchar(50); 

ALTER TABLE person
    alter COLUMN user_age DROP NOT NULL;

ALTER TABLE person
    ADD constraint pk_person_user_age UNIQUE(user_age); PRIMARY KEY (id);

ALTER TABLE person
    DROP CONSTRAINT pk_person_user_age;

DROP TABLE person2;

TRUNCATE TABLE person2;