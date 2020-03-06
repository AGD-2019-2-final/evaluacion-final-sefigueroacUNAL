import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':

    curkey = None
    total = 0

    for line in sys.stdin:

        key, val = line.split("\t")
        val = int(val)

        if key == curkey:
            ##
            ## No se ha cambiado de clave. Aca se
            ## acumulan los valores para la misma clave.
            ##
            values.append(val)
        else:
            ##
            ## Se cambio de clave. Se reinicia el
            ## acumulador.
            ##
            if curkey is not None:
                ##
                ## una vez se han reducido todos los elementos
                ## con la misma clave se imprime el resultado en
                ## el flujo de salida
                ##
                values.sort()
                str_values = ','.join(map(str, (values)))
                sys.stdout.write("{}\t{}\n".format(curkey, str_values))

            curkey = key
            values = [val]

    values.sort()
    str_values = ','.join(map(str, (values)))
    sys.stdout.write("{}\t{}\n".format(curkey, str_values))
