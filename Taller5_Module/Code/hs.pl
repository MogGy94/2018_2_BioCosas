#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

#--------------------------------------------- Métodos para ingresar los pares asociativos de las hashes ------------------

#De forma estática  se pueden asignar los pares asociados si se conoce la relación entre ellos

print "Ejemplo 01\n";

my %diccionario = (
      blanco => 'white',
      azul => 'blue',
);

warn Dumper \%diccionario;
warn Dumper  %diccionario;

print "Ejemplo 02\n";

#Igualmente se puede asignar un nuevo par a la  hash original.
$diccionario{rojo} = 'red';

warn Dumper \%diccionario;

print "Ejemplo 03\n";

#Se puede eliminar un elemento de la hash igualmente

delete $diccionario{azul};

warn Dumper \%diccionario;


print "Ejemplo 04\n";

print "Imprimo el valor asociado a la clave en este caso blanco que es $diccionario{blanco}\n"; # Imprimo el valor de la clave blanco.


print "Ejemplo 05\n";


#Es importante resaltar que la hash también puede crearse cuando por primera vez un par asociativo es definido.

my %new; 

warn Dumper \%new;

$new{uno} = 'one';

warn Dumper \%new;

# Podemos también conocer los elementos de la asociación usando las palabras reservadas (keys o values).

my @keys = keys %diccionario;
my @values = values %diccionario;
my $key = @keys;
my $size = @keys;
print "Hash size:  is $size\n";



print "Ejemplo 06\n";


#-------------------------------Mirando dentro de la hash-------------

foreach my $key (keys %diccionario){
print "$diccionario{$key}\n";
}

foreach my $values (values %diccionario){
print "$values\n";
}

# Construcción de arreglos asociativos de forma dinámica desde la lectura de archivos externos.
# Para correr desde la linea de comandos el argumento $ARGV[0] esta en Data/test.txt
# Se corre como perl introhs.pl Data/test.txt

my %hash = ( );
warn Dumper \%hash;
open my $IN, "< $ARGV[0]";  
while (my $line = <$IN>){
chomp $line;
my @linea = split /\t/, $line;
$hash{$linea[0]} = $linea[1];
}
warn Dumper \%hash;

close $IN;

#
