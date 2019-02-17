SET SERVEROUTPUT ON;

DECLARE

a NUMBER :=5;
b NUMBER :=10;
c NUMBER;

BEGIN -- PL Principal

pa_menor_entre(a,b,c); 
DBMS_OUTPUT.PUT_LINE('El menor es : '|| c);
END;
/
