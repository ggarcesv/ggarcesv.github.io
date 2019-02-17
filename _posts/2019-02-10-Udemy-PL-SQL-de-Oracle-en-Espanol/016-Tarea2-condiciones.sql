set serveroutput on;

DECLARE
    BaseRan NUMBER := ROUND(DBMS_RANDOM.VALUE(600,2000));
    Aumento NUMBER;
    Porcentaje NUMBER;
    Total NUMBER;

BEGIN

    IF (BaseRan<=600) THEN 
    Aumento := BaseRan*0.15;
    Total := BaseRan+Aumento;
    Porcentaje := 15;

    ELSIF (BaseRan BETWEEN 601 AND 950) THEN 
    Aumento := BaseRan*0.135;
    Total := BaseRan+Aumento;
    Porcentaje := 13.5;

    ELSIF (BaseRan BETWEEN 951 AND 1400) THEN 
    Aumento := BaseRan*0.10;
    Total := BaseRan+Aumento;
    Porcentaje := 10;
   
    ELSE 
    Aumento := BaseRan*0.05;
    Total := BaseRan+Aumento;
    Porcentaje := 5;

    END IF;
  
DBMS_OUTPUT.PUT_LINE('El Base es ' ||BaseRan||' Su amento es de '||Porcentaje||'% : '||Aumento||' El total a pago es: '|| Total);

END;
/
