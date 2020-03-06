import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
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
        strip = line.strip("\n");
        #sys.stdout.write("Strip {}".format(strip));
        value,key = strip.split(",")
        
        ##
        ## escribe al flujo estandar de salida
        ##
        sys.stdout.write("{},{}\n".format(key,value))
