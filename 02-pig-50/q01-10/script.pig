fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
lines = LOAD 'data.csv' AS (c1:CHARARRAY, c2:CHARARRAY, c3:INT)
gr = GROUP BY lines c1

STORE gr INTO 'output'

fs -get output/ .
