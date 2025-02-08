
CREATE TABLE STUDENT2(
	ROLL INT,
    NAME VARCHAR(50),
    DEPT VARCHAR (10)
);

INSERT INTO STUDENT2(ROLL, NAME, DEPT) VALUES (1, 'ASRAFUL MOLLA', 'CSE'); 
INSERT INTO STUDENT2(ROLL, NAME, DEPT) VALUES (2, 'MOLLA', 'EEE'); 

SELECT *
FROM STUDENT2;

ALTER TABLE STUDENT2
ADD PRIMARY KEY (ROLL);

SELECT *
FROM STUDENT2
WHERE ROLL=1;

SELECT ROLL, COUNT(*)
FROM STUDENT2
GROUP BY ROLL
HAVING COUNT(*) > 0;