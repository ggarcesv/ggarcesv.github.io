set serveroutput on;

DECLARE
Nombre nvarchar2(100):=' Giuliano Boris ';
Apellido nvarchar2(100):=' Garces Vega ';
NombreCompleto nvarchar2(200):= Nombre || Apellido;
Nombre2 nvarchar2(100);
Hoy date:=sysdate;


BEGIN
-- Funciones con variables String
dbms_output.put_line('Largo :' || LENGTH(Nombre));
dbms_output.put_line('Nombre :' || Nombre);
dbms_output.put_line('Trim :' || TRIM(Nombre)||';'); -- Elimina espacios vacíos del comienzo y final
dbms_output.put_line('Minusculas :' || LOWER(Nombre)); -- Convierte a minuscula
dbms_output.put_line('Mayusculas :' || UPPER(Nombre)); -- Convierte a mayusculas
Nombre :=TRIM(Nombre);
Apellido :=TRIM(Apellido);
dbms_output.put_line('Nombre Completo :' || NombreCompleto);
dbms_output.put_line('Reemplazo :' || REPLACE(Nombre,'Boris','Barny')); -- Busca y reemplaza valores, es case sensitive
dbms_output.put_line('Cortar :' || SUBSTR(Nombre,1,3)); -- Corta una palabra

-- Funciones con Fechas
dbms_output.put_line('Hoy :' || Hoy);
dbms_output.put_line('Agregar Mes :' || ADD_MONTHS(Hoy,1));
dbms_output.put_line('Agregar Dia :' || (Hoy+1));
dbms_output.put_line('Dia :' || TO_CHAR(Hoy,'dd'));
dbms_output.put_line('Dia Mes :' || TO_CHAR(Hoy,'dd-MM'));
dbms_output.put_line('Anio :' || TO_CHAR(Hoy,'YYYY'));

--Funciones con nulos
dbms_output.put_line('NVL :' || NVL(Nombre2,'Es nulo'));

END;
/