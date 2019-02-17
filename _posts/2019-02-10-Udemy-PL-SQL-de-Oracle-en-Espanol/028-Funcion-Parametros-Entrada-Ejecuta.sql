SET SERVEROUTPUT ON;

DECLARE
a number:=33;
b number:=25;
z number;

BEGIN
z:= FN_MAYOR_ENTRE(a,b);
DBMS_OUTPUT.PUT_LINE('El mayor es : '||z);

END;
/