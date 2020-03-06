import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    
    for line in sys.stdin:
        l = line.strip();
        c1,c2,c3 = l.split();
        sys.stdout.write("{},{}".format(c2,line));