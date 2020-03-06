import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    
    for line in sys.stdin:
        line = line.strip();
        c1,c2,c3 = line.split();
        sys.stdout.write("{}\t{}\n".format(c1,c3));


