#!/bin/bash
echo "Hola \n Parcial 2"
for j in  ../Data/*.txt
do
  #grep ">" $i
  echo $j

  #tail -25 $i
  cat $j |
  #awk {'print $1'}
  #cut -d ')' -f1,2,3 --output-delimiter='\n'
  # pasa a columna
  tr -s ')'  '\n'|
  tr -s '('  ' '|
  #grep "^."|

  #cut -d'(' -f1
  awk {'print $3" "$2" "$1'} |
   #wc
   sort -nr 
 #  head -10
  #sort -nr

done
echo -e "Hola \n Parcial 2"
#read PASSWORD

#tr -s ' '  '\n'
