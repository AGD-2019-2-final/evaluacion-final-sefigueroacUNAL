import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    
    count  = 0;
    for line in sys.stdin:
        key, val = line.split("\t")
        sys.stdout.write(val);
        count = count + 1
        if count == 5:
            break;
            
        
        
        
