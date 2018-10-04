#!/usr/bin/perl 

#--------------------------------------------------------------Autor Clara I. Bermúdez------------------------------------------------------
#		Curso Programaciòn y algortimos en bioinformática
#		Escriba al Departamento de quejas y reclamos a cibermudezs@unal.edu.co. 
#------------------------------------------------------------------------------------------------------------------------------------------




#-----------------------------------------------------Buena práctica para la programación segura ------------------------------------------------------

#   1. #!/usr/bin/perl

#   Opciones de seguridad para prueba de errores ...ideal para la programaciòn segura. Para no generar inconsistencia en el còdigo
#   2. use strict;
#      
#   3. use warnings;
# 

# Errores frecuentes  --------------------- Variables inicializadas incorrectamente -----------



#--------------------- EJEMPLO -------------------
# ---- Uso correcto

#!/usr/bin/perl
use strict;
use warnings;

my $nombre = "Estudiante";

print "$nombre";

# ---- Uso Incorrecto

#!/usr/bin/perl
use strict;

for($i=0; $i<=5; $i++){
print "$i";
}



#----------------- Referencias que no existen -----------------------
# Una referencia es una variable que contiene la dirección de memoria de una variable. Las referencias se utilizan para pasar parámetros, cuando se usan subrutinas, un tema que se 
#trabajará en el siguiente taller. Para acceder a la referencia se antepone el simbolo \ sobre la variable de interés. Y se imprime

# Incorrecto

#!/usr/bin/perl
use strict;

my $nombre = "Uriel";
my $ref = $nombre;
print "${$ref}\n"; #Referencia irreal


# Correcto 
#!/usr/bin/perl
use strict;
my $nombre = "Uriel";
my $ref = \$nombre;  
print "${$ref}\n"; #Imprime el valor almacenada en memoria. NOTE que delimitar la referencia con ${}, dereferencia o permite imprimir el valor alamacenado en memoria
print "$ref\n"; #Imprime el la referencia





#---------------------------- Uso de cadenas acotada por comillas

#-----------------------------------------------Tipos de Variables en Perl Ej06-----------------------------------------------------------

#Perl tiene tres tipos principales de variables, las cuales deben ser iniciadas por primera vez con el prefijo my.  Son de tres tipos: scalars, arrays, and hashes. $ , @ y % .
#$var   # un escalar
#@var   # un array
#%var   # un hash

#Los valores de los escalares  pueden ser cadenas, enteros, puntos flotantes. Sin embargo es importante recordar que las cadenas deben escribirse entre "".


##      Tipos de datos que pueden ser asignados a las variables escalares: strings (cadenas) y numbers (números)
#       strings: cadenas. Se consideran como constantes literales de tipo escalar.
#       literales : significan lo que dicen.
#       numeros: enteros, de punto flotante

#!/usr/bin/perl 
use strict;
use warnings;

########################################################
#Cuando se escriben caracteres entre comillas simples ',
######################################################### 
#todos los caracteres excepto la propia comilla simple ', son interpretados tal y como están escritos en el código, no
#se evaluan variables si estuviesen delimitadas

my $name = "Clara";
print 'Hola $name, como estas?\n';

#El resultado será:
#Hola $name, como estas?\n


####################################################
#Cadenas de texto encerradas en comillas dobles
####################################################
#permiten hacer interpolación (las variables contenidas  entre "" son remplazadas por su contenido), y son interpretadas los caracteres de escape como \n por una nueva línea o \t por una tabulación.

my $name = 'Clara';
my $time  = "hoy";
print "Hola $name,\ncomo estas $time?\n";

#El resultado será:

#Hola Clara, como estas hoy?

#NOTA: Para cadenas de texto sencillas como 'Clara' y "hoy" que no contienen ningun otro caracter que deba ser interpretado, el uso de las dos comillas dobles o sencillas es indiferente.

#Las dos siguientes líneas devolverían el mismo resultado:

#$name = 'Clara';
#$name = "Clara";


#----------------------- ESCALARES ------------------------------------------
#!/usr/bin/perl 
use strict;
use warnings;


my $codon = "AUG"; # Asigno cadena a la variable escalar $codon
my $numero = 2; #  Asigno entero a la variable escalar $numero

print $codon."\n"; # Imprimo la variable. El punto . corresponde al operador concatenación, concateno 2 cadenas al imprimir
print "El codon es $codon\n";  # Imprimo la cadena literal pero las comillas "" permiten hacer la interpolación. 
#La comilla doble (" ") se interpreta los caracteres $, \ ''. Como ya se mencionó se interpreta lo que hay dentro de la cadena, que pueden ser variables, caracteres,  pero una vez sustituidos los tratamos como valores literales
#La comilla simple (' ')  interpreta la cadena dentro de las comilla como si fuese literal, es decir, si hay comando dentro de las comillas simples, los mismos no son interpretados.


# EJEMPLO:

print "El cuadrado de $numero es \t ".$numero*$numero."\n"; #Puedo hacer operaciones utilizando los escalares.
print "-----------End 06 \n";
exit;

#----------------------------------- ARREGLOS ---------------------------------------

# Una variable arreglo es una colección finita y ordenada de elementos. La caracteristica de los arreglos se da por el uso de la variable @ 
# y se accede a sus elementos como escalares según su posición en el arreglo.
# A diferencia de otros lenguajes de programación, los  elementos del arreglo pueden ser de diferentes características, es decir los escalares 
# pueden tener asignación númerica o con asiganción de cadenas o arreglos o hashes. 


#!/usr/bin/perl 
use strict;
use warnings;

my @lista = (32, 45, 16, 5); # Declaración de una arreglo sencillo
print "$lista[2]\n";


# Cada elemento del array es un  escalar y que puede ser llamado dando su posición en el arreglo. 
# Otra  manera de declarlos @array = ('A','G','C'); # Lista de cuatro valores escalares
# Las posiciones en los arrglos se indexas desde cero.

#6c

my @bases = ('A','G','C','U');
# Ahora imprimimos cada elemento del array

print "Aca imprimimos los elementos de un array\n";
print "\n Primer elemento\t";
print $bases[0];
print "\n Segundo elemento\t";
print $bases[1];
print "\n Tercer elemento\t";
print $bases[2];
print "\n Cuarto elemento\t";
print $bases[3];
print "\n Imprimo todos los elementos del arreglo\t";
print "@bases\n";
print "----------End 6c\n";
#exit;


#------- OPERACIONES SOBRE ARREGLOS ---------------------------------

#El loop foreach permite acceder a cada uno de los elementos en el arreglo

my @names = ("Clara", "Carlos", "Cata");
foreach my $n (@names) {
print "$n\n";
}


#Los índices en un array
#Recuerden que los indices en un array empiezan por 0. El indice superior es siempre la variable $#name_of_the_array. Por tanto

my @names = ("Clara", "Carlos", "Cata");
print  "$#names";
#Debe imprimir  el valor contenido en el indice último o el 2 como en este caso


#El tamaño de un arreglo

my @names = ("Clara", "Carlos", "Cata");
print  "@names\n";
my $size= scalar @names;
print "El tamaño del arreglo es $size\n";



#------------------  Iterar sobre los indices de un array
#Cuando requerimos el valor y el indice de ese valor en el arreglo. Necesitamos iterar sobre los indices y obtener los valores a partir de ellos:

my @names = ("Clara", "Carlos", "Cata");
foreach my $i (0 .. $#names) {
print "$i - $names[$i]\n";
}

for (my $j=0; $j <= $#names; $j++){
print "$j - $names[$j]\n";

}


#---------------------  Añadir un elemento a un array
#Esta función push añade un nuevo valor al final de un array:

my @names = ("Clara", "Carlos", "Cata");
push @names, 'Rosa';
print "@names";


#--------------------- pop extrae el último elemento de un array:
my @names = ("Clara", "Carlos", "Cata");
my $last_name= pop @names;
print "@names";


#-------------------- unshift añade un  elemento al principio de un array:
my @names = ("Clara", "Carlos", "Cata");
unshift @names, "Rosario";
print "@names";

#--------------------- shift extraerá el primer elemento del array y moverá el resto hacia la izquierda.
my @names = ("Clara", "Carlos", "Cata");
my $first_name= shift @names;
print "$first_name";



# ---------------------- Bloques de código delimitados por -estructuras de control y subrutinas


#7.1 Usos de estructuras de control y escalares: 

#A menos que se diga lo contrario, el programa se ejecuta desde la primera hasta la última declaración. Esto funciona para los programas sencillos, sin embargo, el uso de las estructuras de control permite controlar cuales son las sentencias que se ejecutan y en que momentos.

#En este ejemplo se utiliza la estructura de control loops o ciclos. Son muy importantes por su capacidad de ejecutar (repetir) una intrucciones muchas veces.

#Generalmente se utiliza i  de iterador como la variable de control

#Iniciaciòn de la variable de control

#Condición de control : el valor final que puede tomar la variable control

#Incremento valor que incrementa la variable control

#Cuerpo: es lo que se harà en cada iteración

#------------------------------Ej 7a

for ( my $i=1;$i<=10;$i++) {
print "$i\n";

}
print "----------End 07a\n";
exit;


#------------------------------------------------Ej07b -------------------------------------------------------------
#Uso de contadores. Son muy importantes para realizar operaciones y controlar 
#Primero son inicializados. En este ejemplo se inicia en 0.
#
#
my $count=0;

for (my $i=1;$i<=10;$i++) {
#$i++ es equivalente a hacer i=i+1;
#
#Otros tipos de asignammiento binario, permite asignar algo a una variable existente
#$a = $a + 3; equivalente a $a += 3;

$count += $i; # Equivalente a $count = $count + $i
print "$i\n";

}
print $count."\n";
print "----------End 07b\n";

exit;

#Variaciones de los contadores 07c

#!/usr/bin/perl
use strict; 
use warnings;

my $count=4;

for (my $i=1;$i<=10;$i+= $count) {

# Que ocurre para el incremento en el loop?
print "$i\n";

}
print $count."\n";
print "----------End 07c\n";

exit;


#------------------------------------------------Ej08---------------------------------------------------------------------
#8.1 
#Escriba un programa que ejecute una estructura de control tipo ciclo, donde la variable de control final sea una variable.
#
print "----------End 08\n";

#------------------------------------------------Ej08 -------------------------------------------------------------
#


#--------------------------Ej.9a --- Subrutinas
#Las subrutinas son un importante modo de organizar un programa y en pocas palabras comprende una serie de intrucciones que pueden llamarse muchas veces 
#en el programa. Hay que asignarle los valores que requiere para ser ejecutado. Piense que es como un programa dentro de un programa y cuando se manejan códigos grandes permite organizar el código.
# Ejemplo: Un programa con una subrutina que añade ACGT a DNA

my $dna = "CCCCGGGGAAATTTAA";
# Ahora se llama la subrutina "addCadena"
#El argumento que se pasa a la subrutina es $dna y el resultado se guarda en $longer_dna

my $longer_dna = addCadena($dna);

print "Yo utilizé mi primera subrutina y anadí ACGT a $dna y consigo un DNA mas largo $longer_dna\n";

print "----------End \n";
#exit;
#---------------------subrutina addCadena--------------------
sub addCadena {
my ($dna) = @_;
$dna .= 'ACGT';
return $dna;

}

#------------------------Finaliza Ej.9a


#-------------------------Ej.9b

my $dna = "CCCCGGGGAAATTTAA";
# Ahora se llama la subrutina "addCadena"
#El argumento que se pasa a la subrutina es $dna y el resultado se guarda en $longer_dna

my $longer_dna = addCadena($dna);
my $longer_dna02 = addCadena($longer_dna);

print "Yo utilizé mi primera subrutina y anadí ACGT a $dna y consigo un DNA mas largo $longer_dna y otro mucho mas largo $longer_dna02\n";

print "----------End 9b\n";
exit;
#---------------------subrutina addCadena--------------------
sub addCadena {
my ($dna) = @_;
$dna .= 'ACGT'; # Se utiliza el operador concatenar .
return $dna;

}

#---------------------- Finaliza Ej 9b

#Otro tipo de variables
#Una hash se conoce como variable asociativa y asocia claves a valores de las claves.

use strict;
use warnings;


my %diccionario = (
      blanco => 'white',
      azul => 'blue',
);

print "$diccionario{blanco}\n"; # Imprimo el valor de la clave blanco.

