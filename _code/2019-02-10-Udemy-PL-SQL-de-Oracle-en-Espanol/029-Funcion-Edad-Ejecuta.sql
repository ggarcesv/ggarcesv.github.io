SELECT fechanaci, fn_edad_actual(fechanaci), sysdate 
FROM EMPLEADOS
WHERE fn_edad_actual(fechanaci)>35;