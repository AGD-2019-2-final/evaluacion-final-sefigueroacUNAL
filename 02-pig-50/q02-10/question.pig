-- Pregunta
-- ===========================================================================
-- 
-- Ordene el archivo `data.tsv`  por letra y valor (3ra columna).
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
--  >>> Escriba el codigo del mapper a partir de este punto <<<
-- 
lines = LOAD 'data.tsv'
    AS (c1:CHARARRAY, c2:CHARARRAY, c3:INT);
ORD1 = ORDER lines BY c1,c3;
STORE ORD1 INTO './output' using PigStorage('\t');

