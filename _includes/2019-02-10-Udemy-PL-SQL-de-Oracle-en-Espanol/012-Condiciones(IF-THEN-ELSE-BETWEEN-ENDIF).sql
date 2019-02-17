set serveroutput on;

DECLARE

    Nota number :=67;
    
BEGIN

IF Nota BETWEEN 67 AND 69 THEN
    Nota:=70;
END IF;

DBMS_OUTPUT.PUT_LINE ('Nota:'||Nota);

IF (Nota >= 70) THEN
    DBMS_OUTPUT.PUT_LINE ('Aprobado');
ELSE
    DBMS_OUTPUT.PUT_LINE ('Reprobado');

END IF;

END;
/