import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    
    for line in sys.stdin:
        line_dep = line.strip();
        c1,c2,c3 = line_dep.split();
        sys.stdout.write("{}{}\t{}".format(c1,str(c3).zfill(10),line));
