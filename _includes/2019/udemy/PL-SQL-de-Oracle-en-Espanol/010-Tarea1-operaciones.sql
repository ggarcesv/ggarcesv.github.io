set serveroutput on;

DECLARE
-- Definicion de funciones y variables
Total_camiseta number := 2;
Valor_camiseta number := 15;
Subtotal number := Total_camiseta*Valor_camiseta;
Impuesto number := Subtotal*0.15;
Total number := Subtotal+Impuesto;
BEGIN

dbms_output.put_line('Lleva: ' || total_camiseta || ' camisetas a $' ||valor_camiseta ||' c/u');
dbms_output.put_line('Subtotal: ' || Subtotal);
dbms_output.put_line('Impuesto: ' || Impuesto);
dbms_output.put_line('Total a Pagar: ' || Total);

END;
/