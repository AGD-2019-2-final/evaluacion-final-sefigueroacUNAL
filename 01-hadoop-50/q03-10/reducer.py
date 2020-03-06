import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
#!/usr/bin/env python

import sys

##
## Esta funcion reduce los elementos que
## tienen la misma clave
##

if __name__ == '__main__':

    curkey = None
    total = 0

    ##
    ## cada linea de texto recibida es una
    ## entrada clave \tabulador valor
    ##
    for line in sys.stdin:
        
        strip = line.strip("\n");
        key, val = strip.split(",")
        sys.stdout.write("{},{}\n".format(val, key))

