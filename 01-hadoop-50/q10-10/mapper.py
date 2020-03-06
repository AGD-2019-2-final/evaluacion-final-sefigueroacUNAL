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
        line = line.strip()
        number, letters = line.split("\t")
        number = int(number)
        
        for key in letters.split(","):
            sys.stdout.write("{}\t{}\n".format(key,number))