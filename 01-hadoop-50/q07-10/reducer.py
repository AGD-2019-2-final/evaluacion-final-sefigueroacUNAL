import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    
    for line in sys.stdin:
        l = line.split("\t")
        sys.stdout.write("{}\n".format(l[1]));
