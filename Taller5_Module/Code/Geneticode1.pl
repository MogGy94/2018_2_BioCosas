#!/usr/bin/perl

#------------------------Preamble---------------------------------

use strict;          # strict enforces the use of the "my" directive for all the variables
use warnings;        # warnings directive produces useful messages about potential problems in your code
use lib "./lib";     # use lib "/Users/clara/Documents/ProgramacionAlgo/MasteringBioinformatics/CodePerl/lib", #lib directory where the file .pm is stored
use Geneticcode1;    # to load the module Geneticcode1.pm



#-----------------------program body ------------------

#----- To initialize variables; -----------------------


my $dna = 'AACCTTCCTTCCGGAAGAGAG';
my $protein = '';


#---------------------Sentences to process:-----------------------------------------------

#----------------------------1------------------------------------------------------------
#Translate each three-base codon to an amino acid, and append to a new string named protein
#------------------------------------------------------------------------------------------


for (my $i=0; $i < (length($dna)- 2); $i +=3) {

    $protein .= Geneticcode1::codon2aa(substr($dna, $i,3));

}

print $protein."\n";
