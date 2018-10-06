#!/usr/bin/perl


#------------------------Preamble---------------------------------

use strict;          # strict enforces the use of the "my" directive for all the variables
use warnings;        # warnings directive produces useful messages about potential problems in your code
use lib "./lib";     # use lib "/Users/clara/Documents/ProgramacionAlgo/MasteringBioinformatics/CodePerl/lib", #lib directory where the file .pm is stored
use Geneticcode3;    # to load the module Geneticcode3.pm
use SequenceIO;      # to laod the module SequenceIO



#-----------------------program body -----------------------------

#-----------------------To initialize variables-------------------
my @file_data = ( );
my $dna = '';
my $revcom = '';
my $protein = '';

#---------------------senteces to process--------------------------


#--------------------------1---------------------------------------
# Read in the contents of the file "sample.dna"
#-------------------------------------------------------------------

@file_data = SequenceIO::get_file_data("../Data/sample.dna");


#------------------------ 2 ---------------------------------
#Extract the sequence data from the contents of the file "sample.dna"
#--------------------------------------------------------------------

$dna = SequenceIO::extract_sequence_from_fasta_data(@file_data);

# ------------------------3-----------------------------------------
# Translate the DNA to protein in one of the six reading frames
#   and print the protein in lines 70 characters long
#-------------------------------------------------------------------

print "\n -------Reading Frame 1--------\n\n";

$protein = Geneticcode3::translate_frame($dna, 1);

SequenceIO::print_sequence($protein, 70);

exit;
