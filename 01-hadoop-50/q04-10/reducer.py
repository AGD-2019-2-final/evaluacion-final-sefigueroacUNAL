import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == "__main__":

    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin:
        

        ##
        ## genera las tuplas palabra \tabulador 1
        ## ya que es un conteo de palabras
        ##
        
        c2,l = line.split(",");
        sys.stdout.write("{}".format(l));

