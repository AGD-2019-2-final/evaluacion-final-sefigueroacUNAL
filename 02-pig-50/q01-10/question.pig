-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
lines = LOAD 'data.tsv'
    AS (c1:CHARARRAY, c2:CHARARRAY, c3:INT);
g = GROUP lines BY c1;
my_count = FOREACH g GENERATE group, COUNT(lines);
STORE my_count INTO './output' using PigStorage('\t');