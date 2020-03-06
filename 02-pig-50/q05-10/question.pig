-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
lines = LOAD 'data.tsv'
    AS (c1:CHARARRAY, c2:BAG{t:(p:CHARARRAY)});
FLAT = FOREACH lines GENERATE FLATTEN(c2) as ff;
G = GROUP FLAT BY ff;
z = FOREACH G GENERATE group, COUNT(FLAT);
DUMP z;
STORE z INTO './output' using PigStorage('\t');

--C3 = FOREACH ORD1 GENERATE c3;
--LIM = LIMIT C3 5;
--STORE LIM INTO './output' using PigStorage('\t');
