-- 
-- Pregunta
-- ===========================================================================
--
-- Para resolver esta pregunta use el archivo `data.tsv`.
--
-- Escriba una consulta que devuelva los cinco valores diferentes más pequeños 
-- de la tercera columna.
--
-- Escriba el resultado a la carpeta `output` de directorio de trabajo.
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
DROP TABLE IF EXISTS data;
CREATE TABLE data(
    c1 STRING,
    c2 DATE,
    c3 INT    
    )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t';

LOAD DATA LOCAL INPATH "data.tsv" OVERWRITE INTO TABLE data;

INSERT OVERWRITE LOCAL DIRECTORY 'output'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
SELECT c3 FROM data GROUP BY c3 ORDER BY c3 LIMIT 5;
