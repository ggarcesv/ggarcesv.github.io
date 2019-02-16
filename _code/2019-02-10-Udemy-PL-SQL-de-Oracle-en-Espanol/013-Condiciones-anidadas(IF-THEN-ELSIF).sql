set serveroutput on;

DECLARE

    Nota number :=82;
    
BEGIN

IF (Nota >=90) THEN
    DBMS_OUTPUT.PUT_LINE ('Excelente');

ELSIF (Nota >=80) THEN
    DBMS_OUTPUT.PUT_LINE ('Muy Bien');
    
ELSIF (Nota >=70) THEN
    DBMS_OUTPUT.PUT_LINE ('Muy Bien');

ELSE
    DBMS_OUTPUT.PUT_LINE ('Necesita Mejorar');

END IF;

END;
/