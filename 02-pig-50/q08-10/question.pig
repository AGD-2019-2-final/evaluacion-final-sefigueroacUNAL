-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra de la 
-- columna 2 y clave de al columna 3; esto es, por ejemplo, la cantidad de 
-- registros en tienen la letra `b` en la columna 2 y la clave `jjj` en la 
-- columna 3 es:
-- 
--   ((b,jjj), 216)
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
lines = LOAD 'data.tsv'
    AS (c1:CHARARRAY, c2:BAG{t:(p:CHARARRAY)}, c3:MAP[]);
FLAT = FOREACH lines GENERATE FLATTEN(c2), FLATTEN(c3);
G = GROUP FLAT BY ($0, $1);
CNT = FOREACH G GENERATE group, COUNT(FLAT);
DUMP CNT;
STORE CNT INTO './output' using PigStorage('\t');

