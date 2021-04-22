’

HOW TO find missing kven words from nob text

# Komento

Komento on:

```
cat ~/Desktop/xxxnob2fkv.txt |preprocess --abbr=tools/tokenisers/abbr.txt|unob|lookup2cg|vislcg3 -g src/syntax/disambiguation.cg3 |grep -v '"<'|cut -d" " -f1,2|uniq|grep ' N$’|sort|uniq -c|sort -nr|cut -c6-|cut -d'"' -f2|nobfkv|grep '?'|cut -f1
```

# MITEN KÄYTTÄÄ (lue tämä, tämä riittää):

* Seiso terminaalissa main/langs/nob :ssa! (Eli jos kirjoitat pwd ja painat enter pitäis lukea: .../main/langs/nob)
 Kirjoita komentoon cat:in jälkheen polku sinun tiedostoon ja sen tiedoston nimi! (Värjätty keltaisella) 
    -  - esim. ~/Documents/NorjalainenTeksti.txt

Jos haluat eri sanaryhmän kuin vain Nouns (N) niin muokkaa (tai poista) osaa (Punainen teksti keltaisella): 

```
... | grep ' N$’ | ...
```

Muita mahdollisia tageja on esimerkiksi: A, V, Adv, Pron, Pr

Tuloksena saat sanalistan jonka voit kopioida uuteen tekstitiedostoon.

# MUTTA MITÄ SE OIKEASTAAN TEKKEE (vapaaehtoista):

Komennot ottaa tekstitiedoston, 
* -> laittaa sen sana sanalta norjankielisen analysaattorin lävitse, (ja disambiguaattorin),
* -> poistaa disambiguaattorin tekemät ekstraanalyysit (hus = (N+Sg ja N+Pl), haluthaan vain 1: hus +N)
* -> poimii vain sanoja jotka kuuluvat siihen sanaluokkaan jota pyysin (esim. grep ' N$’)
* -> katsoo mitkä näistä sanoista puuttuu nobfkv sanakirjasta
* -> palauttaa ne, puhtaana listana

Jos syvällisemmin haluat ymmärtää yksittäiset komennot, aloita ensimmäisestä ja katso mitä saat tuloksesi. Sit lisää seuraava komento perään ja katso mitä nyt saat tuloksesi. Sit lisää seuraava jne. kunnes koko komentoketju on käytössä ja saat lopullisen sanalistan tuloksesi. Tässä vielä vähän kommentteja avuksi:
Komennot ottaa tekstitiedoston, 

```
  cat ~/Desktop/xxxnob2fkv.txt |preprocess --abbr=tools/tokenisers/abbr.txt|\
1. laittaa sen sana sanalta norjankielisen analysaattorin lävitse, (ja disambiguaattorin):
  unob|lookup2cg|vislcg3 -g src/syntax/disambiguation.cg3 |\
1. puhdistaa tekstiä ja poistaa disambiguaattorin tekemät ekstraanalyysit (hus = (N+Sg ja N+Pl), haluthaan vain 1: hus +N):
  grep -v '"<'|cut -d" " -f1,2|uniq|\
1. poimii vain sanoja jotka kuuluvat siihen sanaluokkaan jota pyysin (esim. grep ' N$’|):
  grep ' N$’|\
1. järjestää ne frekventisti, poistaa duplikaatit ja puhdistaa tekstiä:
  sort|uniq -c|sort -nr|cut -c6-|cut -d'"' -f2|\
1. katsoo mitkä näistä sanoista puuttuu nobfkv sanakirjasta:
  nobfkv |grep '?'|\
1. palauttaa ne, puhtaana listana:
  cut -f1
```
