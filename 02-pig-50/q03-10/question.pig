-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
lines = LOAD 'data.tsv'
    AS (c1:CHARARRAY, c2:CHARARRAY, c3:INT);
ORD1 = ORDER lines BY c3;
C3 = FOREACH ORD1 GENERATE c3;
LIM = LIMIT C3 5;
STORE LIM INTO './output' using PigStorage('\t');