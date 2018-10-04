#!/usr/bin/perl 
# . . . . .XXXXXXXXXXXXXXXXXX . . . . .
# . . . XXX . . . . . . . . . XXX . . .
# . .XX . . . . . . . . . . . . .XXX. . 
# . X . . . . . . . . . . . . . . . X .
# .XX . . XXXXX . . . . . XXXXX . . XX.
# X . . . X . X . . . . . X . X . . . X
# X . . . XXXXX . . . . . XXXXX . . . X
# X . . . XXXXX . . . . . XXXXX . . . X
# X . . . . . . . . . . . . . . . . . X
# X . . . . . . . . . . . . . . . . . X
# X . . . . XXXXXXXXXXXXXXXXX . . . . X
# X . . . . XXXXXXXXXXXXXXXXX . . . . X
# XX. . . . XXXXX . . . XXXXX . . . .XX
# . X . . . . XX. . . . . XX. . . . X .
# . XX. . . . . XXXXXXXXXX. . . . .XX .
# . . XX. . . . . . . . . . . . .XX . .
# . . . XXXX. . . . . . . . .XXXX . . .
# . . . . . XXXXXXXXXXXXXXXXX . . . . .
use strict;
use warnings;
my $x = 18; 
my $y = 18;

for(my $i=0; $i<=$x; $i++){
    for(my $j=0; $j<=$y; $j++){
        #print "X ";
        if ($i == $j){
            print "A " ;   
        } elsif ($i == 0 )  {
            if ($j > 4 && $j <=13 ){
                print "X " ;
            }else{
                print " "
            }
        } else {
            print "c ";
        }
    }
    print "\n"
}

#print `clear`;
print "\033[2J"; 
print "\n holi " ;