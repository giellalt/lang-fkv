#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in fkv:
# sh devtools/prop_minip.sh prop_42_sur | dfkvNorm | less
# sh devtools/prop_minip.sh Sirainen | dfkvNorm 


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/stems/propernouns.lexc | grep $PATTERN | sed 's/% /%/g' | tr ' +' ':' | cut -d ':' -f1 | sed 's/%/% /g' | tr -d '%'>$L_FILE

P_FILE="test/data/testpropparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
#    echo "${lemma}${form}" | $LOOKUP $GTLANGS/lang-fkv/src/generator-gt-norm.xfst
    echo "${lemma}${form}" | $HLOOKUP $GTLANGS/lang-fkv/src/generator-gt-norm-dial_Por.hfstol
#   #echo "${lemma}${form}" | $LOOKUP $GTLANGS/lang-fkv/src/generator-gt-norm.xfst
#   echo "${lemma}${form}" | $LOOKUP $GTLANGS/lang-fkv/src/generator-gt-norm-dial_Por.xfst
 done
 rm -f $L_FILE
done

