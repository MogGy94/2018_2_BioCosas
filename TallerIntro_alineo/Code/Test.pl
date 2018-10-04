#!/usr/bin/perl 
#Perl tiene 3 tipos de variables
#Escalar $
#arreglos @   {$a $b $c $d }
#hash %  { $a => $b ,$c => $d }

use strict;
use warnings;


print "Hola\n ----------End 01\n";


my  $x;
$x=0;
if ($x==0){
print "Hola, es mi primera asignacion y es asignarle a la variable x el valor $x\n"
}

print "----------End 02\n";



my  $y;
$y=1;
if ($y==0){  # Estructuras de control de tipo selección 
print "Hola, es mi primera asignación: asigna a la variable y $y\n";
}
else{ # De lo contrario
print "Hola, es el uso del condicional alterno a if y por ello imprimo, no se satisface la condición $y\n"

}

print "----------End 03\n";


my $nombre = "Estudiante";

print "$nombre";

# ---- Uso Incorrecto


for(my $i=0; $i<=5; $i++){
print "$i \n";
}
print "Hola mundo  \n";

my @lista = (32, 45, 16, 5); # Declaración de una arreglo sencillo
for(my $j=0; $j<=3; $j++){
print "$lista[$j] \n";
}

print "$lista[2]\n";

exit;
