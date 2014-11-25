# Kommando når man er i fkv: sh test/src/morphology/testnounlemmas.sh
# Dette skriptet tester at nesten alle lemmaene i nouns.lexc kan genereres. De som ikke kan genereres, kopieres til missingnounLemmas.txt

grep ";" $GTHOME/langs/fkv/src/morphology/stems/nouns.lexc | grep -v "^\!" | sed 's/% /€/g' | sed 's/%:/¢/g' |  tr ":+" " " | cut -d " " -f1 | tr -d "%" | tr "€" " " | tr "¢" ":" | sort -u > nouns
cat nouns | sed 's/$/+N+Sg+Nom/' | $LOOKUP $GTHOME/langs/fkv/src/generator-gt-norm.xfst | cut -f2 | grep -v "N+" | grep -v "^$" | sort -u > analnouns 
cat nouns | sed 's/$/+N+Sg+Nom/' | $LOOKUP $GTHOME/langs/fkv/src/generator-gt-norm.xfst | cut -f2 | grep "N+" | cut -d "+" -f1 | sed 's/$/+N+Pl+Nom/' | $LOOKUP $GTHOME/langs/fkv/src/generator-gt-norm.xfst | cut -f2 | grep -v "^$" >> analnouns 
sort -u -o nouns nouns 
sort -u -o analnouns analnouns 
comm -23 nouns analnouns > $GTHOME/langs/fkv/test/data/missingnounLemmas.txt
rm *nouns 
see $GTHOME/langs/fkv/test/data/missingnounLemmas.txt

