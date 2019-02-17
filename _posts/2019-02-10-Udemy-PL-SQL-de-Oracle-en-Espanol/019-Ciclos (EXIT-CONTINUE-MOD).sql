set serveroutput on;

DECLARE


BEGIN

<<ciclo_tabla1>>
FOR I IN 1..10 LOOP
DBMS_OUTPUT.PUT_LINE (I||'*2='||(I*2));

END LOOP ciclo_tabla1;

DBMS_OUTPUT.PUT_LINE ('----------------------');

<<ciclo_tabla2>>
FOR I IN 1..10 LOOP
    IF (MOD(I,2)=0) THEN
    CONTINUE;
    END IF;
    DBMS_OUTPUT.PUT(I);
    DBMS_OUTPUT.PUT('*2=');
    DBMS_OUTPUT.PUT_LINE (I*2);
END LOOP ciclo_tabla2;

DBMS_OUTPUT.PUT_LINE ('----------------------');

<<ciclo_tabla3>>
FOR I IN 1..10 LOOP
    IF (I=5) THEN
    EXIT;
    END IF;
    DBMS_OUTPUT.PUT(I);
    DBMS_OUTPUT.PUT('*2=');
    DBMS_OUTPUT.PUT_LINE (I*2);
END LOOP ciclo_tabla3;
END;
/
