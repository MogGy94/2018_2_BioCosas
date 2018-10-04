#!/usr/bin/perl 
use strict;
use warnings;

my @MATRIZ;

# TO FILL MATRIZ


for (my $i=0; $i <= 3; $i++)		{
	for (my $j=0; $j <= 3; $j++){
  	$MATRIZ[$i][$j] = int(rand 100);
        print "$MATRIZ[$i][$j]\n";
	} # 2 for
} # 1 for

#To print  MATRIZ 

for (my $i=0; $i <= 3; $i++)            {
        for (my $j=0; $j <= 3; $j++){
        print "$MATRIZ[$i][$j]\t";
        } # 2 for
	print "\n";
} #
