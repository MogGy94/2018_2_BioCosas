#!/bin/bash   # Le indica al sistema que el archivo será ejecutando la Bourne shell.
            # Existen diferentes tipos de shell Bourne shell ( sh), Korn shell ( ksh)
            # Bourne Again shell ( bash) y POSIX shell ( sh)
#---------------------------lineas de comandos--------------------------------------------
pwd
ls
ls | wc -l
ls ../Data/* | wc -l
grep "GG" ../../Taller01/Data/genetic_code.txt | tail -n4 | wc -l
cd ../Data/
pwd
grep ">" * 
echo "Saludos"
