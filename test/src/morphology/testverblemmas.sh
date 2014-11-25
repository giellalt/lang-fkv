# Kommando når man er i fkv: sh test/src/morphology/testverblemmas.sh
# Dette skriptet tester at nesten alle lemmaene i verbs.lexc kan genereres. De som ikke kan genereres, kopieres til missingverbLemmas.txt. 

grep ";" $GTHOME/langs/fkv/src/morphology/stems/verbs.lexc | grep -v "^\!" |  tr ":+" " " | cut -d " " -f1 | tr -d "%" | sort -u > verbs
cat verbs | sed 's/$/+V+Inf/' | $LOOKUP $GTHOME/langs/fkv/src/generator-gt-norm.xfst | cut -f2 | grep -v "V+" | grep -v "^$" | sort -u > analverbs 
comm -23 verbs analverbs > $GTHOME/langs/fkv/test/data/missingverbLemmas.txt
rm *verbs
see $GTHOME/langs/fkv/test/data/missingverbLemmas.txt
