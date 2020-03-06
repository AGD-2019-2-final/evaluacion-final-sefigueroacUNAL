-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Cuente la cantidad de personas nacidas por año.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
u = LOAD 'data.csv' USING PigStorage(',') 
    AS (id:int, 
        firstname:CHARARRAY, 
        surname:CHARARRAY, 
        birthday:CHARARRAY, 
        color:CHARARRAY, 
        quantity:INT);
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
S = FOREACH u GENERATE STRSPLIT(birthday,'-') AS (T:TUPLE(y,m,d));
SPL = FOREACH S GENERATE T.y;
G = GROUP SPL BY $0;
CNT = FOREACH G GENERATE group, COUNT(SPL);
ORD = ORDER CNT BY $0;
DUMP ORD;
STORE ORD INTO './output' using PigStorage(',');

