Test diary
==========

This document writes down test statistics

The overal test command: `make check`

## yaml

The command:

`sh test/yaml-check.sh` 

(data forthcoming)

## Lexical coverage 
fkv
Number of words (standing in `lang-fkv`):

```
cat test/data/freecorpus.txt |\
hfst-tokenise tools/tokenisers/tokeniser-disamb-gt-desc.pmhfst |wc -l
```

Number of unknown words:

```
cat test/data/freecorpus.txt |\
 hfst-tokenise tools/tokenisers/tokeniser-disamb-gt-desc.pmhfst |\
 preprocess --corr=test/data/typos.txt|\
 hfst-tokenise -cg tools/tokenisers/tokeniser-disamb-gt-desc.pmhfst |\
 grep " ?"|cut -d'"' -f2|wc -l
```

Test with the full corpus (free + bound):



### Lexical coverage of freecorpus

The file is `test/data/freecorpus.txt`.

Coverage:

- 240405: 1-(42819/607401) = 0.9295

### Lexical coverage of free + bound

Coverage:







