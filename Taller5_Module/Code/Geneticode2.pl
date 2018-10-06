#!/usr/bin/perl


#------------------------Preamble---------------------------------

use strict;          # strict enforces the use of the "my" directive for all the variables
use warnings;        # warnings directive produces useful messages about potential problems in your code
use lib "./lib";     # use lib "/Users/clara/Documents/ProgramacionAlgo/MasteringBioinformatics/CodePerl/lib", #lib directory where the file .pm is stored
use Geneticcode2;    # to load the module Geneticcode2.pm



#-----------------------program body ------------------

# To initialize variables;
my $dna = 'AACCTTCCTTCCGGAAGAGAG';
my $protein = '';


#-----------------------Sentences to process:        ---------------------------------------
#Translate each three-base codon to an amino acid, and append to a new string named protein
#-------------------------------------------------------------------------------------------
 
$protein .= Geneticcode2::dna2peptide($dna);

print $protein."\n";
