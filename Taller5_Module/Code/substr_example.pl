#!/usr/bin/perl
use strict;
use warnings;


#----------------------------------------USO DE LA FUNCION SUBSTR ---------------------------------------

#Open http://perldoc.perl.org/
#perldoc -f substr
#substr EXPR,OFFSET,LENGTH,REPLACEMENT
#Extracts a substring out of EXPR and returns it
#First character is at offset 0.
#LENGTH : string lenght to be extracted,
#REPLACEMENT: string or value to be replaced

my $s = "The black cat climbed the green tree";
my $color01 = substr $s, 4; # OFFSET = 4. If LENGTH is omitted, returns everything to the end of the string.
print "$color01\n$s\n"; 

my $color = substr $s, 4, 7; #OFFSET 4 AND LENGTH = 7. Substring of size 7.
print "$color\n$s\n"; 

my $middle = substr $s, 4, -11; # If LENGHT is negative, starts at end of the string, counts backwards until the lenght value
print "$middle\n$s\n"; #black cat climbed the

my $end = substr $s, 14; #
print "$end\n$s\n";

my $tail = substr $s, -4; # If OFFSET is negative (or more precisely, less than $[ ), starts that far from the end of the string
print "$tail\n$s\n";# tree

my $ca = "ca";
my $z = substr($s,7,2,$ca); #Argument with replacement. OFFSET 7, Size lenght =2 and  with replacement.
print "Si $z\n";
print "$s\n"; #With replacement substring modify the EXPR.
