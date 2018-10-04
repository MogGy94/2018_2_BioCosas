#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use Fatal qw(open close);

  my  %diccionario = (
        casa  => "house",
        perro => "dog",
        ojo => "eye"
    );

warn Dumper \%diccionario;

foreach my $key (keys %diccionario) {

print "La clave es $key y el valor correspondiente es $diccionario{$key}\n"

}
