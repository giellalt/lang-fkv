Dokumentti [Arbeidsplan.html] antaa yleiskuvan.

Tässä mennään yksityiskohtiin

# Lista mahdollisista tehtävistä:

1. lisätä nämä sanat sanakirjaan: main/words/dicts/fkvnob/inc/dagensord_missing.txt 
1. lisätä sanakirjasanat fst:hen:
    1. käydä läpi fkv/src/fst/stems/ ja siinä
   adverbs.lexc, adjectives.lexc, nouns.lexc, verbs.lexc
   Tiedostojen lopussa on adv_x, a_x, n_x, v_x.
   Ne pitää luokitella oikein.
1. testata lemmat *make check* avulla ja korjaa
1. lisätä sanat fkv/test/data/inc_aikamatka2.txt fst:hen
1. lisätä sanat fkv/test/data/inc_missing_interj
1. käydä tekstejä läpi ja lisätä puuttuvia sanoja fst:hen
1. miettiä, oliko fkv/morphology/stems/numerals.lexc hyvä idea

 
Lisätä fst-hen:

```
cat teksti | preprocess | ufkv | grep '?' | cut -f1
```

Sen jälkeen katsella, ja lisätä miihin sopi 
* main/langs/fkv/src/fst/stems

Lisätä sanakirjaan:

Tee sanakirja-automaatti:

```
cd 
cd main/words/dicts/fkvnob
sh fkvnob.sh

lookup bin/fkvnob.fst
```

Sitten katsot, onko sanasi jo sanakirjassa:

```
cat sanakirjaehdokaslista.txt | lookup bin/fkvnob.fst | grep '?' | cut -f1
```

Sen jälkeen katsella, ja lisätä miihin sopi 
* main/words/dicts/fkvnob/src/

# Ihmiset, työt

1. twolc, lexc-morfologia: **Leena, Anna-Kaisa, Mari** 
1. lexc-leksikko (n_x, jne.): __Mervi n_x__ **Anna-Kaisa muut leksikot**
1. fkvnob-sanakirja, esimerkit: **Pirjo**
1. fkvnob-sanakirja, fkv-oikoluku: **Pirjo** (tehty?)
1. fkvnob-sanakirja, nob-oikoluku: **Tove**
1. sanakirjan kääntäminen: **Ciprian**
1. nobfkv-työ: **Tove, muut**
    1. nob-artikkelien siivoaminen: **Tove, muut**
    1. puuttuvien nob-sanojen 
        1. lisääminen: **Trond, Tove, pedagogit**
        1. kääntäminen: **Pirjo, muut**
1. Tekstit
    1. T-tekstien kerääminen: **KI**
    1. T, P-tekstien lisääminen korpukseen: **Sindre, ...**
    1. Aikamatka-tekstien lisääminen korpukseen: **Sindre, ...**
1. Uusien teksteistä tulevien sanojen lisääminen sanakirjaan ja fst:hen: 

# Lista morfofonologisista pulmista

Pitää tehdä uusi lista.
