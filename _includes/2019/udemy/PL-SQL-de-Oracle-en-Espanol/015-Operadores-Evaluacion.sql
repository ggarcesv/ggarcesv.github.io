set serveroutput on;

DECLARE
    A NUMBER :=5;
    B NUMBER :=10;
    Nombre1 NVARCHAR2(100):='Fernando';
    Nombre2 NVARCHAR2(100);
    
BEGIN

    IF (A>B) THEN 
	DBMS_OUTPUT.PUT_LINE('A es mayor que B');
    END IF;

    IF (A<B) THEN 
	DBMS_OUTPUT.PUT_LINE('A es menor que B');
    END IF;

    IF (A>=B) THEN 
	DBMS_OUTPUT.PUT_LINE('A es mayor o igual que B');
    END IF;

    IF (A<=B) THEN 
	DBMS_OUTPUT.PUT_LINE('A es menor o igual que B');
    END IF;

    IF (A=B) THEN 
	DBMS_OUTPUT.PUT_LINE('A es igual que B');
    END IF;

    IF (A<>B) THEN 
	DBMS_OUTPUT.PUT_LINE('A es diferente que B');
    END IF;

-- Like es case sensitive
    IF (Nombre1 LIKE 'Fer%') THEN
	DBMS_OUTPUT.PUT_LINE('El nombre comienza con Fer');
    END IF;
    
    IF (Nombre1 LIKE '%nan%') THEN
	DBMS_OUTPUT.PUT_LINE('El nombre contiene nan menos al inicio y al termino');
    END IF;
    
    IF (Nombre1 LIKE '%do') THEN
	DBMS_OUTPUT.PUT_LINE('El nombre termina con do');
    END IF;
    
    IF (A BETWEEN 0 AND 10) THEN
    DBMS_OUTPUT.PUT_LINE('A esta entre 0 y 10');
    END IF;
    
    IF (B IN (5,10,15,20)) THEN
    DBMS_OUTPUT.PUT_LINE('B esta en el grupo');
    END IF;   
    
    IF (Nombre2 IS NULL) THEN
    DBMS_OUTPUT.PUT_LINE('Nombre 2 es Nulo');
    END IF;       
END;
/
