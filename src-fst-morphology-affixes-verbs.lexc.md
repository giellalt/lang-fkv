# LEXICA FOR KVEN VERB INFLECTION

This file documents [affixes/verbs.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/verbs.lexc)

## Auxiliaries

**LEXICON neg** jakaantuu kolmeen

**LEXICON indneg** negaation indikatiivipäätteet

Note that lexicon indneg directs to K_NEG and not to K,
this is since we have enkä but not enkin

**LEXICON imprtneg** negaation imperatiivipäätteet

**LEXICON OLLA** on oma leksikko, vielä vain preesens

## Regular verbs

### Verbiluokat v1...

Luokkien v1, v2... Eiran kieliopin mukaan.
Tarvitaan luultavasti alaluokkia.

Jokaisessa leksikossa on infinitiivi, kolmannen
persoonan pääteet, ja viittaus preesensin ja preteritin
kautta leksikkoon **v12pers**, missä *-n, -t, -mA, -ttA*

**LEXICON v1** saađa:saa

**LEXICON v1iđa** Cond uiđa:uisin

**LEXICON v1kayda** käyđä:kä

**LEXICON v1nahda** nähđä:nä

**LEXICON v1tehda** tehđä:te

### Verbiluokat v2...

**LEXICON v2** ! aikkoot:aiko, anttaat:anta, assuut:asu, kattoot:katt2o, kulkkeet:kulke, lähteet:lähte, lenttäät:lentä, lukkeet:luke, luottaat:luotta, näkkyyt:näky, pittäät:pitä, soppiit:sopi (tämä ei ole yaml)

**LEXICON v2_si** ! pyyttäät:pyysi

**LEXICON v2_taittaat** ! taisi, tainu / taitanu

**LEXICON v2_sauttaat** ! sauttaat-sautti

**LEXICON v2_särkkyyt** ! särkkyyt-särjyn

**LEXICON v2_tiettäät** tiettäät

**LEXICON v2_odd** kirjoittaat:kirjoitta

**LEXICON v2_odd_UUt** hyväksyyt:hyväksy

### Verbiluokat v3...

**LEXICON v3_ele_short** = nielä:niel

**LEXICON v3_ele** ajatella:ajattel

**LEXICON v3_ele_odd** kävelä:kävel

* aukaista > aukaisemma
* täristä > tärisemä

**LEXICON v3_ise** aukaista:aukaise

**LEXICON v3_aise** aukaista:aukaise

**LEXICON v3_lnr** ja vartalo on pan-
* pitää tehdä ^D
* Lyhyt partisiippi
* Lyhyt partisiippi
* Lyhyt partisiippi
* Lyhyt partisiippi

**LEXICON v3_s** kusta, nousta, pestä, päästä ja vartalo on kus-
* Lyhyt partisiippi
* Lyhyt partisiippi
* Lyhyt partisiippi

**LEXICON v3piera** pierä:pie
* pitää tehdä ^D
* Lyhyt partisiippi
* Lyhyt partisiippi

**LEXICON v3juosta** juosta:juo

### Verbiluokat v4...

**LEXICON v4** vanheta:vanhe, pajeta:pake

**LEXICON v4_itte** ja vartalo on - kyyti
* Lyhyt partisiippi
* Lyhyt partisiippi
* Lyhyt partisiippi
+Act+PrfPrc:tte%>nnhee PRFPRC_OBL ;

**LEXICON v4_oitte** ja vartalo on haravoi-
* Lyhyt partisiippi
* Lyhyt partisiippi
+PrfPrc:tte%>nnhee PRFPRC_OBL ;

**LEXICON v43** hantteerata:hantteera

**LEXICON v43_odd** jatkata:jatka

**LEXICON v43_odd_II** jatkata:jatka

## Verbien persoonapäätteet

Tämä osa antaa personapäätteet.
1. ja 2. persoona erikseen, koska ne ovat samoja
preesensissä ja preterissä.
3. persoona annettiin jo vartaloleksikoissa.

**LEXICON v12pers** Only sg12, pl12 so far

**LEXICON PRFPRC_OBL** is without nom sg

**LEXICON PRFPRC_OBL_nny** is without nom sg

**LEXICON PRFPRC_OBL_nnu** is without nom sg

**LEXICON PRFPRC_OBL_lly** is without nom sg

**LEXICON PRFPRC_OBL_llu** is without nom sg

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>
