create or replace PROCEDURE PA_MENOR_ENTRE(x in number, y in number, z out number)
AS
BEGIN
    IF(x>y)THEN
        z:=y;
    ELSE
        z:=x;
    END IF;
END;
/