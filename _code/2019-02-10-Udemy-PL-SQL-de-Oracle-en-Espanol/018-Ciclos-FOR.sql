set serveroutput on;

DECLARE


BEGIN
<<ciclo_tabla1>>
FOR I IN 1..10 LOOP
DBMS_OUTPUT.PUT_LINE (I||'*2='||(I*2));
END LOOP ciclo_tabla1;

<<ciclo_tabla2>>
FOR I IN 1..10 LOOP
DBMS_OUTPUT.PUT(I);
DBMS_OUTPUT.PUT('*2=');
DBMS_OUTPUT.PUT_LINE (I*2);
END LOOP ciclo_tabla2;
END;
/
