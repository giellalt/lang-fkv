

```
cat misc/høgsterett.txt |\
hfst-tokenise -cg tools/tokenisers/tokeniser-disamb-gt-desc.pmhfst |\
vislcg3 -g src/cg3/disambiguator.cg3 |\
grep '^	'|\
cut -d'"' -f2|\
grep '[a-z]'|\
nobfkv|\
grep ?|\
cut -f1|\
sort |\
uniq -c|\
sort -nr > misc/h.txt
```

```
cat ~/h.txt |\
cut -c6-|\
hunob|\
cut -f2|\
cut -d"+" -f1,2|\
uniq|\
tr '+' '	'|\
sed 's/$/	/' > misc/tuntemattomat.txt
```

Sanakirjaan.


```
 cat misc/tuntemattomat.txt |\
 grep -v '\t$' |\
 perl ~/main/words/dicts/nobfkv/scripts/c2x.pl
```