-- SHOW timezone;
SELECT NOW();

create table timeZ (ts  TIMESTAMP with time zone, tsz TIMESTAMP without time zone);

INSERT into timeZ values ('2024-06-10 10:00:00+05', '2024-06-10 10:00:00');

SELECT now()

SELECT CURRENT_DATE;

-- SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'dd-mm-yyyy');

SELECT CURRENT_DATE + INTERVAL '1 year 5 month';

SELECT age(CURRENT_DATE, '1995-10-09')

SELECT * from timeZ;

SELECT extract(YEAR  from '2025-12-25' ::date)