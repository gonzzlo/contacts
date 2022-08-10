grep  -o -P '[A-z]{3}[ ][0-9]{3,}' contactos.dat | sort | uniq -c | awk '{ printf "%2s%3s %3d\n", $2,$3,$1 }' > new.dat
sed 's/s//g' new.dat > new1.dat
awk 'BEGIN{FS=OFS=" "}{if($2 > 4000) print $0}' new1.dat > data.dat
sed -i '1i AA     Contacts' data.dat
#Script para plotear en R
#Rscript plot.R
#eog myPlot.png
