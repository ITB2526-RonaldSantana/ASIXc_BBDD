use tech_summit;

-- 1

select substring(nom,1,3) FROM ponent;

-- 2

select NOW();

SELECT CURRENT_DATE;

select CURRENT_DATE, substring(nom,1,3) FROM ponent;

select NOW(), substring(nom,1,3) FROM ponent;

select substring(nom,1,3), CURDATE() FROM ponent;

SELECT substring(nom,1,3), CURRENT_DATE FROM ponent;

select CURDATE() FROM DUAL;

SELECT 18+3 from DUAL;

-- 3

ALTER TABLE ponent ADD level INT;

select * from ponent;

UPDATE ponent
SET level = 5
WHERE id IN (1, 2, 3);

select floor(level) from ponent;