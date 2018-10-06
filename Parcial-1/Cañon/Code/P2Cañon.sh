#!/bin/bash
#Este escrip esta diseñado para buscar el codon o fragmento de codon
# que parace entre los 10 codones mas frecuentes en cada uno de los
# 5 Organismos
echo "Biologia Computacional Parcial 2"
echo -e "\n Porfavor Ingresa el CODON o fragmento de  CODON a Buscar"
read CODON
rm "../Results/PUNTO_2/edilberto"
mkdir "../Results/PUNTO_2/edilberto"

out="../Results/PUNTO_2/edilberto/out.txt"
CodFreq="../Results/PUNTO_2/edilberto/CodFreq.txt"

rm $out
rm $CodFreq

touch $out
touch $CodFreq


for j in  ../Data/*.txt
do
  #grep ">" $i
  #echo $j
  #tail -25 $i
  cat $j |
  #awk {'print $1'}
  #cut -d ')' -f1,2,3 --output-delimiter='\n'
  # pasa a columna
  tr -s ')'  '\n'|
  tr -s '('  ' '|
  grep "^."|

  #cut -d'(' -f1
  awk {'print $3" "$2" "$1'} |
 #wc
 sort -nr |
 head -10 |
 awk {'print $3'} |
 head -10  |
 cat >> ${out}
   #| cat - out.txt
  #sort -nr
  #echo "Holi"

done
echo -e "Resultado para  $CODON"
#read PASSWORD
#cat out.txt | sort -u |wc #mostra y contar unicos
cat $out |
sort |
uniq -cd |
sort -nr |
awk {'print $1" "$2'} >> $CodFreq

grep ${CODON^^} $CodFreq  |
awk {'print "El codon "$2" aparece en "$1 " organismos " '}
#cat out.txt | wc
#tr -s ' '  '\n'
ans="nada"
while [ ${ans^^} != "Y" -a ${ans^^} != "N" ]
do
  echo "Decea ver la lista de Codones mas frecuentes (Y/N)"
  read ans
  if [ ${ans^^} == "Y" ];
    then
  	   echo "Lista de Codoones mas Frecentes"
       cat $CodFreq  |
       awk {'print "El codon "$2" aparece en "$1 " organismos " '}
  elif [ ${ans^^} == "N" ];
    then
      echo "programa finalizado"
    #statements
  else
  	echo "respuesta incorrecta"
  fi
done

#echo ${CODON^^}
