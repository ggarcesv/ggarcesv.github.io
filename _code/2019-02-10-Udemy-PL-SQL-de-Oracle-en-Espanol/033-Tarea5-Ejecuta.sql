SELECT a.*, ROUND(FN_PROMEDIO_NOTAS(nota1,nota2,nota3,nota4)) as promedio 
FROM notas a;