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
my $x = 30;
my $y = 30;
my @MATRIZ;
sub holi {
  for(my $i=0; $i<=$y; $i++){
      for(my $j=0; $j<=$x; $j++){
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
  #print "\033[2J";
  print `clear`;
}
sub taco {
  for (my $i=0; $i <= $y; $i++)		{
  	for (my $j=0; $j <= $x; $j++){
    	$MATRIZ[$i][$j] = int(rand 9);
  	} # 2 for
  } # 1 for

}
sub printTaco {
  for (my $i=0; $i <= $y; $i++)		{
  	for (my $j=0; $j <= $x; $j++){
    	print $MATRIZ[$i][$j] ;
      print "  "
      #print "\t"
  	}
    print "\n"
  }
}

print `clear`;
while (1 >= 0) {
  taco();
  printTaco();
  select(undef, undef, undef, 0.05);
  #sleep();
  #alarm(15);
  print `clear`;
  ##holi();
}




#print `clear`;

#print "\n holi " ;
