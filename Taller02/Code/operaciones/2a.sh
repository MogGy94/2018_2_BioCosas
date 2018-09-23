#!/bin/bash
# Validate numbers...


#Evaluación de expresiones

a=$(( 13 * 2 ))
b=$(( a / 2 ))
c=$(( a - 1 ))
d=$(( a + b ))
echo "Se imprime el valor que se evalua en la expresion para a $a o  para b $b o
para c $c o para d $d"


#http://www.thegeekstuff.com/tag/bash-tutorial/


x=1
y=2
z=$(( x + y ))

echo "Se imprime el valor de la expresion es decir z vale $z"

x=1
y=2
z=$x+$y

echo $z "Se imprime z como cadena no se hace la evaluación de la expresion"

x=1
y=2
z=${x}+${y}

echo $z "Se imprime z como cadena no se hace la evaluación de la expresión" 


