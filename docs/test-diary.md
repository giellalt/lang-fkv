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

tbw



## Speller suggestions

### Results

The table shows the number of typos tested, as well as some data for suggestions. For how to test, see below.


Test results with divvunspell (for older data, see below):
```
             typos    Avrg pos    % missp    % missp   % missp
             .txt     for corr    in 1st     in top-5  anywhere   
---------------------------------------------------------------
240509:       736                 67.39      86.01      
240510:       737                 67.30      85.89     90.09 
---------------------------------------------------------------
```


### How to test

To test: Clone [divvunspell](https://github.com/divvun/divvunspell/blob/main/README.md) and install **divvunspell** and **acceracy**. Then stand in `divvunspell` and do:

```
accuracy -o support/accuracy-viewer/public/report.json ../../giellalt/lang-mns/test/data/ typos.txt ../../giellalt/lang-mns/tools/spellcheckers/mns.zhfst

cd support/accuracy-viewer

npm i && npm run dev
```

At the end the report says (for example) `port: 35729`. Take the 5-digit number and open (the parallel to) http://localhost:35729  in your browser.







