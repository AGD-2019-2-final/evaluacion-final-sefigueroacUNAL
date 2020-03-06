-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
lines = LOAD 'data.tsv'
    AS (c1:CHARARRAY, c2:BAG{t:(p:CHARARRAY)}, c3:MAP[]);
FLAT = FOREACH lines GENERATE FLATTEN(c3) as (k,v);
SEPARATE = FOREACH FLAT GENERATE k;
G = GROUP SEPARATE BY $0;
Z = FOREACH G GENERATE group, COUNT(SEPARATE);
DUMP Z;
--G = GROUP FLAT BY ff;
--z = FOREACH G GENERATE group, COUNT(FLAT);
--DUMP z;
STORE Z INTO './output' using PigStorage(',');
