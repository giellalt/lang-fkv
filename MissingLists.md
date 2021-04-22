##  Missing list

---- 
sivu alkaa tähän

ufkv jos xfst, hufkv jost hfst-xfst:

Missing-list-komento on tämä:

```
cat teksti.txt | preprocess | ufkv | grep "+?" | cut -f1 | sort | uniq -c | sort -nr > teksti.missing
cat teksti.txt | preprocess | hufkv | grep "+?" | cut -f1 | sort | uniq -c | sort -nr > teksti.missing
```

Missing-list-kommennon selitys:

```
cat teksti.txt | # ota teksti
preprocess |     # yksi sana per rivi
ufkv |           # analysoi (jos normatiivinen, niin ufkvNorm, hufkvNorm)
grep "+?" |      # poimi tuntemattomat: virrhe<tab>virrhe<tab>+?
cut -f1 |        # poimi ensimmäinen kolonna: virrhe
sort |           # aakkostaa
uniq -c |        # lyö yhteen ja laske määrä
sort -nr >       # järjestä taajuuden mukaan
teksti.missing   # 
```

Sen jälkeen pitää lisätä teksti.missing-sanat src/fst/stems/ -tiedostoihin tarpeiden mukaan.

Hyvä idea: Jos on tavallinen virhe, niin sekin voidaan lisätä analysaattoriin:

peret+Err/Orth:pär n_32_et ; 

Onko sinulla antiword-lääke? Kirjoita komentoriville:
```
which antiword
```

Jos kone löytää antiwordin, sinulla on se. Jos ei, dokumentaatio
kerto miten se asennetaan.

* Jos teksti on muodossa teksti.doc, voit tehdä `antiword teksti.doc`.
* Jos teksti on muodossa teksti.docx, sinun pitää 
    - tallentaa se .txt-muotoon, tai
    - tallentaa se .doc-muotoon ja käyttää antiword, tai
    - kopioida sisällön ja liimata tekstidokumenttiin

```
which ccat
convert2xml ~/freecorpus/orig/fkv
ccat -l fkv ~/freecorpus/orig/fkv | preprocess | ...
```

Vaihtoehtoinen 

ei preprocess, vaan hfst-tokenize
