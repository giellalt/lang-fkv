# Kven Finnish description 

All documents in one file



# Disambiguator for Kven

## Sets

Sentence delimiters are the following: "<.>" "<...>" "<!>" "<?>" "<¶>"

### Part-of-Speech
* N = noun
* A = adjective
* Num = numeral
* V = verb
* Adv = adverb
* Pcle = particle
* Pr = preposition
* Po = postposition
* Pron = pronoun
* Interj = interjection

### Numerus

* Sg = Singular
* Pl = Plural
* Sg1 = Singular 1.p.
* Sg2 = Singular 2.p.
* Sg3 = Singular 3.p.
* Pl1 = Plural 1.p.
* Pl2 = Plural 2.p.
* Pl3 = Plural 3.p.

### Cases
* Nom
* Gen
* Acc
* Par
* Ine
* Ill
* Ela
* Ade
* Abe
* All
* Abl
* Ess
* Tra
* Ins
* Com
* SUBJ-CASE = Nom Par

### Types
* Prop = Proper noun
* Interr = Interrogative
* Dem = demonstrative pron
* Rel = Relative pron
Relpronpl "mikkä ja "jokka"
Relpronsg "mikä" ja "joka"
Interrpronpl "kuka" ja "mikä"
* Pers = Personal pron
* Indef = Indef pron

* Inf = Infinitive
* ConNeg = Conjugated as Negative form
* PrfPrc = Perfectum Particip
* Imprt = Imperative
* Act = Active
* Neg = Negation verb

* COMMA = comma

* Foc/kaan = focus clitic -kaan

* Sem/Fem = feminin propernoun

## Sets with more members

* WORD = all PoS

* NPMOD = these can modify a noun
* NPMODADV = NPMOD plus adverb

* NOT-NPMOD = these cannot modify a noun

* NOT-NPMODADV = these cannot modify a noun, and is not adverb

* QVANT-ADV = e.g. paljon, vähän
* KUNKA = e.g. kunka missä (adverbs that start a sentence)

Boundaries

* S-BOUNDARY = words that start a sentence

Verbs

* SV-BOUNDARY = words that start a sentence and finite verb

## Disambiguation rules

### Dialects

### Early rules

* __person_test__ selects finite verb if there is a Pron Pers to the left

* __adv_after_V__ selects adverb if there is a verb to the right

* __prop_infrontof_kieli__ removes propernoun in fron of kieli, if it kan be something else, e.g. Kainun kieli

* **PropInit** removes  propernoun in the beginning of a sentence if it kan be a CC or a Pr (e.g. Mutta)

* **PropNotInit** selects  propernoun if it is not in the beginning of a sentence

Possessive suffixes

Numeral phrases

### Preposition/postposition/adverb rules

* **Prifgenpar** selects  preposition to the left of Gen or Par

* **Poifgenpar** selects  postposition to the right of Gen or Par

* **vasthaan**

## Rules for mapping @CVP and @CNP on the CC and CS

* **CVP** maps @CVP to CS and mutta

* **CNPifN** maps @CNP to CC between two N

* **CNPifInf** maps @CNP to CC between two Inf

## Case rules

### Partitive

Genitive

### Illative

## Number rules

## More disambiguation rules
* **SgNotPl**

### Elative

## Propernouns

## Verbs

### Specific verbs	

ei negation verb

eli

## Adverbs

### paljon

### kerran

### jälkhiin

## Adjectives

Conjunctions

## Subjunctions

että

jos

ko	

sillä	

## Pronouns

## Verb rules, Verbs

### Infinitive

## Present Sg3

## Present Pl3 or Passive

Imperative

* **Pl3ollaifplrelpronandplinterrpron** selects Pl3 if olla

* **Sg3ollaifplrelpronandplinterrpron** selects Sg3 if olla

* **Sg3ollainpretandperf** selects Sg3 if COPULAS

* **Sg3ollainpretandperf** selects Sg3 if COPULAS

* **Relpronandnotintterpron** selects Rel Sg if Interr

* **Relpronandnotintterpron** selects Rel Sg if Interr

* **interrpron** selects Interr if ? in the end

* **DifferenceBetweenNiitäImprtAndNiitäDemAndPersIfSubj** selects Pron Dem Pl or Pron Pers Pl3 when finite verb to the right

* **paljonadvandnotpaljonoun** selects Adv if paljon

* **Relpronifitsanounoracommabeforeit** selects Rel Pl if N to the left

* **annaimperativeandnotannaname** removes Prop if Anna se

* **tulinounfromtuliprtsg3** selects V Sg

* **dempronandnotpronpers** selects Den if A of N to the right

* **Imperativefromconneg** selects and removes ConNeg

* **ImperativeafterNeg** removes Imprt if pronoun

* **interrel** selects Interr of Rel if CS to the right

* **+FMAINV**  to the remaining finite verbs which are not AUX    

## HNOUN MAPPING

* **@<ADVLcoor** (@<ADVL) for ADVLCASEAdv if @CNP to the left and ADVL to the left of it

* **X** maps X everywhere

* **REMOVE X** removes X whenever there is any other tag.

* WORDLEMMA = regex giving the lemma in question

* **errorth** removes Err/Orth if there is an analysis without Err/Orth with the same lemma

* * *
<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-fkv/blob/main/src/cg3/disambiguator.cg3)</small>
S Y N T A C T I C   F U N C T I O N S   F O R   S Á M I

Sámi language technology project 2003-2014, University of Tromsø # 

## For Korp:

Here we remove special tags for MT

###  **smeRemove** removes the language tags <sma>, <sme>,  etc, before proceeding to the dep file.

Here we remove semantic tags for all other words than
proper nouns.  

* * *
<small>This (part of) documentation was generated from [src/cg3/korp.cg3](https://github.com/giellalt/lang-fkv/blob/main/src/cg3/korp.cg3)</small>

* **X** maps X everywhere

* **REMOVE X** removes X whenever there is any other tag.

* * *
<small>This (part of) documentation was generated from [src/cg3/old_disambiguation.cg3](https://github.com/giellalt/lang-fkv/blob/main/src/cg3/old_disambiguation.cg3)</small>

* **LEXICON ab-noun   **

* **LEXICON ab-adj   **

* **LEXICON ab-adv   **

* **LEXICON ab-num   **

### Lexicons without final period

* **LEXICON ab-nodot-noun   **  The bulk

* **LEXICON ab-nodot-adj   **

* **LEXICON ab-nodot-adv   **

* **LEXICON ab-nodot-num   **

### Lexicons with final period

* **LEXICON ab-dot-noun   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-adj   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-adv   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-num   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-cc   **

* **LEXICON ab-dot-verb   **

* **LEXICON nodot-attrnomaccgen-infl   **

* **LEXICON nodot-attr-infl   **

* **LEXICON nodot-nomaccgen-infl   **

* **LEXICON dot-attrnomaccgen-infl   **

* **LEXICON dot-attr   **

* **LEXICON dot-nomaccgen-infl   **

* **LEXICON DOT   ** - Adds the dot to dotted abbreviations.

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/abbreviations.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/abbreviations.lexc)</small>

---

Affix file for Kven adjectives

# The base lexica

Each a_ lexicon gets the +A tag and is then redirected to
a common x_ lexicon in the noun file, while compar and superl are here.

long_par        ;

* LEXICON vanha_nocomp_a_21  

* LEXICON a_11_i   siisti

* LEXICON a_11   hieno, tuttu, syyry

* LEXICON a_11_E2I  moni, umpi, pälvi 

* LEXICON a_11_ae   väärä, nöyrä

* LEXICON a_21	  liberaali !TODO: selvittää kannattaako siirtää osa sanoista toiseen ryhmään vai muuttaa tämän ryhmän nimen 

* LEXICON a_21_odd	 loistaava 

* LEXICON a_31  = pää

* LEXICON a_31_ee	  pimmee, valkkee, kauhhee, hoppee ! TODO sort out nouns and adjectives

* LEXICON a_31_ii   auttii

* LEXICON a_31_uu   liehmuu

* LEXICON vanha_a_23ea	 pimeä. Is Jok verson of vanha_a_23, never called from stems/adjectives.lexc

* LEXICON a_12	  pieni

* LEXICON a_12_si	 uusi. uussiin only por, always one s in Var

* LEXICON a_22  tyven

* LEXICON vanha_a_32m  irtain

* LEXICON a_22_ma  vasen sg taipuu kuitenki -ma, lämmin:lämpi

* LEXICON a_32_as  raskas

* LEXICON a_32_paras  vain sannaa paras varten

* LEXICON vanha_a_33aes  sinnikäs

* LEXICON a_32_is  valmis, kaunis

* LEXICON a_32_kärys  kärys, so far this is the only word

* LEXICON a_32_et  tuoret

* LEXICON a_32_u  vaipunu:vaipun ! perfect participle

* LEXICON a_32_väsynyt  väsyny:väsyn, so far this is the only word ! perfect participle

* LEXICON a_32_nny  hengistynny:hengistyn

* LEXICON a_32_nnu  hengistynny:hengistyn

* LEXICON a_22_excns  = veres

* LEXICON a_22_excns_even  = veres

* LEXICON a_22_excns_mus  = isomus

* LEXICON a_22_inen  varovainen

* LEXICON a_22_inen_odd  sininen

LEXICON MATON  ! TODO TODO TODO ajattelemattomalle lle lla nna

* LEXICON a_22_ton_even  muuttumaton

* LEXICON a_22_ton_odd  onneton

LEXICON MATONodd  ! käymättömäle le la na ! TODO Probably not in use atm

* LEXICON x_22_ton  onneton

* LEXICON x_22_ton_yksi_t  alaston yhelä -t:läm alastoman

# Basic paradigms

Most cases are directed to affixes/nouns.lexc

## Lexica for the non-uniform cases

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/adjectives.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/adjectives.lexc)</small>

---

# Sublexica for NounRoot

Aloitin sovittaa analyysin Eiran kieliopin mukaan (Porsanki).
Leksikot ovat nyt (tai pitää olla) n11, n12, jne., eli siis
Eiran nominit tyyppi 1.1., 1.2., jne.

2007 s.87
* 1. Yksitavuiset / Vi ( maa, tuorestai)        = vanha_n_1
* 1.1. Yksitavuiset monikko/ Vi ( häät)         = vanha_n_1pl
* 2. Vokaalirankaiset
- 2.1 Kaksitavuiset ( pappi)                   = vanha_n_21
- 2.1.1. Kaksitavuiset monikko (housut)       = vanha_n_21pl
- 2.1.2. Kaksitavuiset (joki: joke)           = vanha_n_21ie
- 2.2. Usseempitav. (opettaaja)                = vanha_n_22
- 2.2.1. Usseempitav. odd (kajava)            = vanha_n_22odd
- 2.2.2. Usseempitav. odd (meininki, tunturi) = vanha_n_22oddi
- 2.2.3. Usseempitav. monikko oi (kulkkiija)  = vanha_n_22oi
- 2.3 Kokkoontumanom. ( valkkee)               = vanha_n_23
- 2.3.1 Kokkoontumanom. (assii)                = vanha_n_23ii
* 3. Konsonanttirankaiset
- 3.1 Kaksitavuiset ( pieni, kieli)            = vanha_n_31
- 3.1.1. Kaksitavuiset lumi)                   = vanha_n_31lumi
- 3.1.2. (käsi, vuosi)                         = vanha_n_31si
- 3.1.3. (lapsi)                               = vanha_n_31lapsi
- 3.1.4. (mies)                                = vanha_n_31mies
- 3.2 Usseempitavuiset
- 3.2.1 (tytär)                                = vanha_n_32
- 3.2.2. (elläin)                              = vanha_n_32m
- 3.2.3 (rakkhaus)                             = vanha_n_32s
- 3.3 Kokkoontumanom. ( opas, huonet)
- 3.3.1 (opas)                                 = vanha_n_33s
- 3.3.2 (asukas)                               = vanha_n_33sodd
- 3.3.3. (ruvis)                               = vanha_n_33is
- 3.3.4 (huonet)                               = vanha_n_33t
- 3.3.5 (kirves)                               = vanha_n_33ts
* 4. Ekstrakonsonanttirankaiset
- 4.1 veres-nominit ( veres, kokkous)          = vanha_n_41
- 4.1.1. veres-nominit monikko ( veljekset)    = vanha_n_41pl
- 4.2 –inen-nominit ( kainulainen)             = vanha_n_42 = nen
- 4.2.1 -inen-nominit Pl (tervheiset)         = vanha_n_42pl = nen
- 4.2.2 -inen-nominit odd (vihrinen)          = vanha_n_42odd = nen

## Noun types

### Incomong

* LEXICON n_31  = maa, tie

* LEXICON n_31_ai  = tuorestai ja muut päivät

* LEXICON n_31_pl  = häät

* LEXICON x_31_pl  = häät

the same affix in sg and pl

### Eira's classification

* LEXICON n_11   lyhyt vokali, yks vartalo, syksy ! jos loppuu i:hin ne ovat lainasanoja

* LEXICON n_11_AO  sana - sanoissa. Linna? Linnoissa? aika

* LEXICON x_11_AO  sana - sanoissa. Linna? Linnoissa? aika ! TODO which adjectives?

* LEXICON n_11_A0_A2I  kuva - kuvissa, poika - pojissa ! TODO which adjectives?

* LEXICON x_11_A0_A2I  kuva - kuvissa, poika - pojissa ! TODO which adjectives?

* LEXICON n_11_A0_A2I_pl  kuva - kuvissa, poika - pojissa ! TODO which adjectives?

* LEXICON x_11_A0_A2I_pl  kuva - kuvissa, poika - pojissa ! TODO which adjectives?

the same affix in sg and pl

LEXICON n_11_E2I         on ovi:ove, joki:joke, hyksi, suomi ! Ei lainasanat

these two lexica for cases with

the same affix in sg and pl

LEXICON n_11_E2I_pl         sakset, hykset

* LEXICON n_11_pl          "villahousut", lyhyt vokali, yks vartalo, kasvot

* LEXICON x_11_pl         ! Seems like no adjectives call this?

the same affix in sg and pl

* LEXICON n_21_C  lainasanat, badminton

* LEXICON n_21          opettaaja, karamelli

* LEXICON n_21_odd   kajava

* LEXICON x_21_odd   kajava

* LEXICON n_21_A0   opettaaja, tapattuma

* LEXICON x_21_A0   

* LEXICON n_21_odd_pl   kattoojat

* LEXICON n_21_odd_C  lainasanat, fiction

* LEXICON n_21_odd_i   meininki, tunturi TODO

* LEXICON n_21_oi          Paivukko, perintö, kurkkio

* LEXICON n_21_oi_pl          Pahkilot

* LEXICON n_21_oi_AO_odd         Mustikka, kulkkiija, sivakka, asia (in Var) ! Loppuu a:han!!!!

* LEXICON n_21_oi_ÄÖ_odd          Kynttilä, tekkiijä, jyrinä - Loppuu ä:hän!!!!

* LEXICON n_21_oi_AO_even          kuunteliija

* LEXICON n_21_oi_ÄÖ_even          käveliijä

* LEXICON n_31_ee          hoppee:hoppe

* LEXICON n_31_yy          revyy

* LEXICON n_31_ii          assii (in Por) kurkkii (in Por)

* LEXICON n_31_ii          for same affix in sg and pl

* LEXICON n_31_ii          for same affix in sg and pl

* LEXICON n_31_uu          karhuu (in Por) 

* LEXICON n_31_uu          for same affix in sg and pl

* LEXICON n_31_uu          for same affix in sg and pl

LEXICON n_12          kieli

* LEXICON n_12          for same affix in sg and pl

* LEXICON n_12          for same affix in sg and pl

LEXICON n_12_pl          nuoret

* LEXICON n_12_pl          for same affix in sg and pl

LEXICON n_12_mi        lumi lu

LEXICON n_12_si         vuosi, käsi, hirsi

LEXICON n_12_vuosi       vuosi, vuona 

LEXICON x_12_vuosi      

LEXICON n_12_kusi         kusi kuusi

LEXICON x_12_kusi         kusi kuusi
these two lexica for cases with

the same affix in sg and pl

LEXICON n_12_lapsi         lapsi la

LEXICON x_12_lapsi         lapsi la
these two lexica for cases with

the same affix in sg and pl

LEXICON n_12_mies         mies mie

LEXICON x_12_mies         mies mie
these two lexica for cases with

the same affix in sg and pl

LEXICON n_22  tytär:tyttär, taival:taipal

LEXICON n_22_pl  tytär:tyttär, taival:taipal

LEXICON n_22_m  elläin elläi yđin ydin

LEXICON x_22_m 

LEXICON n_22_m_pl 

LEXICON n_22_s   sairhaus

* Konsonanttivartalo: poista -e ja heikko aste
* Konsonanttivartalo: poista -e ja heikko aste

* Konsonanttivartalo: poista -e ja heikko aste
* Konsonanttivartalo: poista -e ja heikko aste

LEXICON n_22_s_even   avaruus

* Konsonanttivartalo: poista -e ja heikko aste
* Konsonanttivartalo: poista -e ja heikko aste

* Konsonanttivartalo: poista -e ja heikko aste
* Konsonanttivartalo: poista -e ja heikko aste

LEXICON n_32_as  rakas, asukas

LEXICON n_32_as_pl  rakas, asukas

LEXICON n_32_ae  kevät

LEXICON n_32_is  ruvis, ruumis

LEXICON n_32_et  venet, hyljet, huonet

LEXICON n_32_et_2  askel, kyynel, kannel

LEXICON n_32_ut  vantut:vantutta:vantthuut

LEXICON n_32_ts  kirves

LEXICON x_32_ts  kirves

these two lexica for cases with

the same affix in sg and pl -- tsekkaa long

* LEXICON n_22_excns  = veres (keskus)

*  LEXICON n_22_excns_even  = (kuttumus)

* LEXICON n_22_excns_pl  = veljekset

* LEXICON x_22_excns_pl  = veljekset

these two lexica for cases with

the same affix in sg and pl -- tsekkaa long

these two lexica for cases with

the same affix in sg and pl

LEXICON n_22_inen_odd  ihminen

these two lexica for cases with

the same affix in sg and pl

LEXICON n_22_inen_pl !  tervheiset tervhei
the same affix in sg and pl

LEXICON n_22_inen_pl_even !  olympialaiset
the same affix in sg and pl

+N:se   nomgen_px      ;

make+N+Pl+kom:sine K              ;

Basic paradigms

### Sublexica for the basic unified cases, with even and odd variations

### Sublexica for Gen, Par, Ill, Ess and Com.

### Sublexica for possessive suffixes

Px is now not in use, with one exception, comitative.

LEXICON n_PxK   has either -n or goes to Px

LEXICON i_PxK   Tra: -i or -e and goes to Px

LEXICON PxK  has only -nsA, and is currently not in use. Check

LEXICON PxxK   has also -Vn, thus both .. llensa and ..lleen.

Tästä tiedostosta löytyvät suljetut sanaluokat.                                                                                                                       

Px-Vn leksikossa on vain kuusi sanaa                                                                                                                              

Basic paradigms

## Basic vowel stems

 !LEXICON strong_v_stem_even   ''Kaikki vahvan asteen sijamuodot tähän''

 !LEXICON strong_v_stem_odd   ''Kaikki vahvan asteen sijamuodot tähän''

### Sublexica for the vowel stems

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/nouns.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/nouns.lexc)</small>

---


# Kven numerals 

# Numeral inflection
Numeral inflection is like nominal, except that numerals compound in all
forms which requires great amount of care in the inflection patterns.

* Numeral nominative back examples:*

* Numeral nominative front examples:*

* Numeral nominative plural back examples:*
* *kahđet:* `kaksi+Num+Pl+Nom`

* Numeral nominative plural front examples:*
* *yhđet:* `yksi+Num+Pl+Nom`

* Numeral weak singular back examples:*
* *kahđen:* `kaksi+Num+Sg+Gen`
* *kahđela:* `kaksi+Num+Sg+Ade`
* *kahđelta:* `kaksi+Num+Sg+Abl`
* *kahđele:* `kaksi+Num+Sg+All`
* *kahđessa:* `kaksi+Num+Sg+Ine`
* *kahđesta:* `kaksi+Num+Sg+Ela`
* *kahđeksi:* `kaksi+Num+Sg+Tra`
* *kahđetta:* `kaksi+Num+Sg+Abe`

* Numeral weak singular front examples:*
* *yhđen:* `yksi+Num+Sg+Gen`
* *yhđelä:* `yksi+Num+Sg+Ade`
* *yhđeltä:* `yksi+Num+Sg+Abl`
* *yhđele:* `yksi+Num+Sg+All`
* *yhđessä:* `yksi+Num+Sg+Ine`
* *yhđestä:* `yksi+Num+Sg+Ela`
* *yhđeksi:* `yksi+Num+Sg+Tra`
* *yhđettä:* `yksi+Num+Sg+Abe`

* Numeral strong singular back examples:*
* *kahtena:* `kaksi+Num+Sg+Ess`

* Numeral strong singular front examples:*
* *yhtenä:* `yksi+Num+Sg+Ess`

* Numeral weak plural back examples:*
* *kaksila:* `kaksi+Num+Pl+Ade`
* *kaksilta:* `kaksi+Num+Pl+Abl`
* *kaksile:* `kaksi+Num+Pl+All`
* *kaksissa:* `kaksi+Num+Pl+Ine`
* *kaksista:* `kaksi+Num+Pl+Ela`
* *kaksiksi:* `kaksi+Num+Pl+Tra`
* *kaksitta:* `kaksi+Num+Pl+Abe`

* Numeral weak plural front examples:*
* *yksilä:* `yksi+Num+Pl+Ade`
* *yksiltä:* `yksi+Num+Pl+Abl`
* *yksile:* `yksi+Num+Pl+All`
* *yksissä:* `yksi+Num+Pl+Ine`
* *yksistä:* `yksi+Num+Pl+Ela`
* *yksiksi:* `yksi+Num+Pl+Tra`
* *yksittä:* `yksi+Num+Pl+Abe`

* Numeral weak plural back strong examples:*
* *kaksina:* `kaksi+Num+Pl+Ess`
* *kaksine:* `kaksi+Num+Pl+Com`

* Numeral weak plural back strong examples:*
* *kaksina:* `kaksi+Num+Pl+Ess`
* *kaksine:* `kaksi+Num+Pl+Com`

* Numeral weak plural front strong examples:*
* *yksinä:* `yksi+Num+Pl+Ess`
* *yksine:* `yksi+Num+Pl+Com`

* Numeral weak plural front strong examples:*
* *yksinä:* `yksi+Num+Pl+Ess`
* *yksine:* `yksi+Num+Pl+Com`

* Numeral singular partitive a examples:*
* *kahđeksee:* `kahđeksen+Num+Sg+Par` (Eng. !eight)

* Numeral singular partitive a poss aan examples:*
* *kolmee:* `kolme+Num+Sg+Par` (Eng. !three)

* Numeral singular partitive ta examples:*
* *kuutta:* `kuusi+Num+Sg+Par` (Eng. !six)

* Numeral singular partitive tä examples:*
* *viittä:* `viisi+Num+Sg+Par` (Eng. !five)

* Numeral singular illative an examples:*
* *kahđeksheen:* `kahđeksen+Num+Sg+Ill`

* Numeral singular illative en back examples:*
* *kolmheen:* `kolme+Num+Sg+Ill`

* Numeral singular illative en front examples:*
* *viitheen:* `viisi+Num+Sg+Ill`

* Numeral singular illative in back examples:*
* *miljardhiin:* `miljardi+Num+Sg+Ill` (Eng. !billion)

* Numeral plural partitive ia examples:*
* *kaksii:* `kaksi+Num+Pl+Par`

* Numeral plural partitive ja examples:*
* *miljardii:* `miljardi+Num+Pl+Par`

* Numeral plural genitive ien back examples:*
* *kaksiin:* `kaksi+Num+Pl+Gen`

* Numeral plural genitive ten back examples:*
* *kuussiin:* `kuusi+Num+Pl+Gen`
* *kuutten:* `kuusi+Num+Pl+Gen` (Eng. !kuussiin on tärkeämpi)

* Numeral plural genitive ten front examples:*
* *viissiin:* `viisi+Num+Pl+Gen`
* *viitten:* `viisi+Num+Pl+Gen` (Eng. !viissiin on tärkeämpi)

* Numeral plural genitive in back examples:*

* Numeral plural genitive in front examples:*

* Numeral plural illaive ihin bavk examples:*
* *miljardhiin:* `miljardi+Num+Pl+Ill`

* Numeral plural illaive iin back examples:*
* *kakshiin:* `kaksi+Num+Pl+Ill`

* Numeral possessive back examples:*
* *kahteni:* `kaksi+Num+Sg+Nom+PxSg1` (Eng. !Kainun kielessä possessiivisuffiksiita käytethään aika vähän. Annamme niiden olla täällä toistaiseksi.)

* Numeral possessive front examples:*
* *yhteni:* `yksi+Num+Sg+Nom+PxSg1`

* Numeral possessive back aan examples:*
* *kolmeensa:* `kolme+Num+Sg+Par+PxSg3`

* Numeral possessive back eenback examples:*
* *kahđeksensa:* `kaksi+Num+Sg+Tra+PxSg3`
* *kahđekseen:* `kaksi+Num+Sg+Tra+PxSg3`

* Numeral possessive back een front examples:*
* *neljeksensä:* `nelje+Num+Sg+Tra+PxSg3`
* *neljekseen:* `nelje+Num+Sg+Tra+PxSg3`

* Numeral possessive back ään examples:*
* *viittänsä:* `viisi+Num+Sg+Par+PxSg3`
* *viittään:* `viisi+Num+Sg+Par+PxSg3`

* Numeral clitic back examples:*

* Numeral clitic front examples:*

* **LEXICON ARABICCASES**  adds +Arab

* **LEXICON ARABICCASE**  adds +Arab

* **LEXICON ARABICCASE0**  adds +Arab

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/numerals.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/numerals.lexc)</small>

---



# Pronominien morfologia

Pronominit ovat edelleen vaan kokeiluvaiheessa.

LEXICON 12pronsg  on 1., 2. p. yksikkö

LEXICON 12pronsg_short  on 1., 2. p. yksikkö

LEXICON 123pronpl  

nuoitä

tuotä

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/pronouns.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/pronouns.lexc)</small>

---

2007 s.87
* 1. Yksitav. / Vi ( maa, tuorestai)	 = vanha_n_1
* 1.1. Yksitav. monikko/ Vi ( häät)	 = vanha_n_1pl
* 2. Vokaalirankaiset
- 2.1 Kaksitav. ( aika, pappi)	 = vanha_n_21
- 2.1.1. Kaksitav. monikko (housut)  = vanha_n_21pl
- 2.1.2. Kaksitav. (joki: joke)      = vanha_n_21ie
- 2.2. Usseempitav. (opettaaja)	 = vanha_n_22
- 2.2.1. Usseempitav. odd (meininki, tunturi)= vanha_n_22odd
- 2.2.2. Usseempitav. mon. oi (kulkkiija) = vanha_n_22oi
- 2.3 Kokkoontumanom. ( valkkee,)	= vanha_n_23
- 2.3.1 Kokkoontumanom. ( assii)     = vanha_n_23ii
* 3. Konsonanttirankaiset
- 3.1 Kaksitav. ( pieni, kieli)  = vanha_n_31
- 3.1.1. lumi:lumen:lunta      = vanha_n_31m
- 3.1.2. (käsi, vuosi)   = vanha_n_31si
- 3.1.3. (lapsi)	     = vanha_n_31lapsi
- 3.1.4. (mies)		= vanha_n_31mies
- 3.2 Usseempitav. ( tytär)
- 3.2.1 (tytär)            = vanha_n_32
- 3.2.2. (elläin: elläimen  = vanha_n_32m
- 3.2.3. (rakkhaus)	  = vanha_n_32s
- 3.3 Kokkoontumanom. ( opas, huonet)
- 3.3.1 (opas)               = vanha_n_33s
- 3.3.2 (asukas)             = vanha_n_33s
- 3.3.3. (ruvis)             = vanha_n_33is
- 3.3.4 (huonet)             = vanha_n_33t
- 3.3.5 (kirves)		   = vanha_n_33ts
* 4. Ekstrakonsonanttirankaiset
- 4.1 veres-nominit ( veres, kokkous)		= vanha_n_41
- 4.1.1. veres-nominit monikko ( veljekset)	= vanha_n_41pl
- 4.2 –inen-nominit ( kainulainen)		  	= vanha_n_42 = nen
- 4.2.1 -inen-nominit Pl (tervheiset)	  	= vanha_n_42pl = nen
- 4.2.2 -inen-nominit odd (vihrinen)	  	= vanha_n_42odd = nen

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/propernouns.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/propernouns.lexc)</small>

---


# Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/symbols.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/symbols.lexc)</small>

---

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

**LEXICON v2_tiettäät** tiettäät

**LEXICON v2_odd** kirjoittaat:kirjoitta

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
+V+Act+PrfPrc:tte%>nnhee PRFPRC_OBL ;

**LEXICON v4_oitte** ja vartalo on haravoi-
* Lyhyt partisiippi
* Lyhyt partisiippi
+V+PrfPrc:tte%>nnhee PRFPRC_OBL ;

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

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/verbs.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/affixes/verbs.lexc)</small>

---

# Phonological rules for Kven

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-fkv/blob/main/src/fst/phonology.twolc) 

We first define alphabets and sets. Thereafter come the rules.

## Alphabets and sets

### Alphabet

#### The letters
* a b c d đ ð e f g h i j k l m n o p q
* r s t u ü v w x y z å ä ö æ ø š
* A B C D Đ Ð E F G H I J K L M N O P
* R S T U V W X Y Z Å Ä Ö Æ Ø Š

#### The archiphonemes
* **%^A:ä %^O:ö %^U:y** archi vowels for harmony
* **%^V %^N:n** vowel copy sanoo, LNR copy purra

#### Letters with deviant behaviour
* **i2:i** = plural i of nouns
* **i3:i** = past tense i of verbs
* **i4:i** = i in conditional isi of most verbs (without gemination)
* **i5:i** = superlative i of adjectives
* **i6:i** = i:j in poika:pojan
* **i7:i** = i in conditional of contract verbs (with gemination)
* **p2:p t2:t k2:k** p2, k2, t2 = always p, t, k ; eli ei tule astevaihtelua
* **t3:t** t3 = gradation but not t:s (implemented?)
* **t4:t** t4 = always p, t, k ; eli ei tule astevaihtelua eikä geminaatio (täytyy)
* **k3:k** k3 never k:v, contrary to k

#### Triggers
* **%^HMETA:0** h metateesi sykshyyn
* **%^WG:0** weak grade hatun
* **%^TJ:0** vuote vuoje
* **%^T0:0** tytär tyär tytärtä tyärtä in Var
* **%^UU:0** vuote vuue
* **%^E2I:0** e to i in nom ove : ovi
* **%^A2I:0** a to i in opettajine (Var)
* **%^VDEL:0 %^EDEL:0** -- DEL = deletion
* **%^AE:0** -- a to e lauletaan, soma somempi
* **%^AO:0** -- a to o sanoissa
* **%^A0:0** -- a to 0
* **%^I0:0** -- i to 0 in vanha_x_21 -Por with i endings: tooline
* **%^E0:0** e to 0 in vanha_a_32 and vanha_n_32 bc we add b4 dial trigger, for twolc struc.
* **%^End:0** -- End of word, since the # tags don't work properly
* **%^¤:0** -

#### Dialect tags
* **%^Por:0** -f- Porsanger  dialekti
* **%^Var:0** -- Varanger   dialekti
* **%^Jok:0** -- Jokivarret dialekti

### Literal quotes and angles 
Thesemust be escaped (cf morpheme boundaries further down):
* »7 represents the quotation mark »
* «7 represents the quotation mark «
* %[%>%] >
* %[%<%] <
* **»** = Derivational suffix
* **%>** = border before inflection suffix
* The hash mark = Word boundary for both lexicalised and dynamic compounds
* **%^** = (exceptional) soft hyphenation point 

### Sets
* FrontVow = e i i2 i3 i4 i5 i6 i7 y ä ö ü æ ø ;
* BackVow = a o u å ;
* ArchiVow = %^A %^O %^U ;
* UnroundedVow = e ä a i i2 i3 i4 i5 i6 i7 ;
* RoundedVow = y ö u o ;
* SomeVow = %^V ;
* NeutralVow = e i i2 i3 i4 i5 i6 i7 ;
* Vow = FrontVow BackVow ArchiVow SomeVow ;
* NotE = i i2 i3 i4 i5 i6 i7 y ä ö ü æ ø a o u å ;
* NotEY = i i2 i3 i4 i5 i6 i7 ä ö æ ø a o u å ;
* NotEYU = i i2 i3 i4 i5 i6 i7 ä ö æ ø a o å ;
* NotOU = e i i2 i3 i4 i5 i6 i7 y ä ö ü æ ø a ;
* NotOUI = e y ä ö ü æ ø a ;
* NotOUIY = e ä ö æ ø a ;
* NotAEI = y ä ö ü æ ø o u å ;
* NotOUIF = y ä ö ü æ ø ; and e? (removed 29.1.)
* NotOUIB = a ; and e? (removed 29.1.)
* NotEYUF = i i2 i3 i4 i5 i6 i7 ä ö æ ø ;
* NotEYUB = i i2 i3 i4 i5 i6 i7 a o å ;
* LNRM = l n r m ;
* ArchiCns = %^N ;
* B C D Đ F G H J K L M N P Q R S Š T V W X Z ;
* Cns = SurfaceCns ArchiCns p2 t2 k2 ;
* Segment = Vow Cns ;
* Dummy = %^WG %^T0 %^TJ %^UU %^E2I %^A2I %^HMETA %^VDEL %^EDEL %^AE %^AO %^¤ %^I0 %^E0 %^A0 %^Por %^Var %^Jok ;
* DummyBorder = Dummy %> ;
* Dial = %^Por %^Var %^Jok ;
* NonFront = BackVow ArchiVow ArchiCns SomeVow Cns NeutralVow Dummy %> ;
* NE = %> n e ;
* EÄA = e %^A ;

Development principles:
--- NO UNCLEAR SEQUENCES WITHOUT AN EXPLANATION (and TESTS): (Cns:*) :Cns+ Cns:* (:Cns)
--- One TRIGGER, one change! No ^AO that means a:o and a:0 and a:i, then 3 DIFFERENT triggers

### Trigger order 
(to be completed). The triggers should be in this order both in lexc and here in twolc.

`stem  Dial:  WG  {T0,TJ}  {E0,I0,E2I,A2I,AO,AE,VDEL,UU}  HMETA  >  {i2:,i3:,i4:](i5:}  >  suffixes`

# Rules 
(Divided into consonant and vowel rules)

## Consonant rules

### Gemination rules

Pitkän vokaalin jälkeen ja kans painottoman tavun jälkeen k, t, p ja s geminoituvat
ko perässä on pitkä vokaali (= lounaismurteitten erikoisgeminaatio),
mutta muut konsonantit geminoituvat vaan lyhyen painollisen tavun jälkeen
(= yleisgeminaatio). (ES).

Rule: **Gemination 0:h**

Rule: **Gemination 0:j**

Rule: **Gemination 0:k**

#### Tests:
* *flak0u>i2>n*
* *flakku>i>n*
* *flaku>i2>n^A*
* *flaku>i>na*
* *urk0u>i2*
* *urkku>i*

Rule: **Gemination 0:l**

Rule: **Gemination 0:m**

Rule: **Gemination 0:n**

Rule: **Gemination 0:p**

Rule: **Gemination 0:r**

Rule: **Gemination 0:s**

Rule: **Gemination 0:t**

Rule: **Gemination 0:v**

## Gradation rules

### Rules for *p* gradation 

Rule: **Gradation p:0 (pp:p)**

Rule: **Gradation p:v**

Rule: **Gradation mp:mm**

**Tests:**
* *kilpe^WG>n*
* *kilve0>n*
* *ranka^WG>n*
* *ranga0>n*
* *napa^WG>n*
* *nava0>n*
* *taipal^WG*
* *taival0*
* *varpa^WG*
* *varva0*
* *halpa^WG*
* *halva0*
* *turpe^WGt*
* *turve0t*

### Rules for *k* gradation 

Rule: **Gradation i6:0, in word poika: pojan**

**Tests:**
* *poi6ka^WG>n*
* *po0ja0>n*
* *poi6ka^WG^A0>i2>le*
* *po0j000>i>le*

TODO: When k:j and when k:0 between e and i.

Rule: **Gradation k:j**

Rule: **Gradation k:0**

**Tests:**
* *halke^WG%>t^A*
* *halje0>ta*

**Tests:**
* *mäke^WG>n*
* *mäje0>n*
* *aika^Por^WG>n*
* *aija00>n*
* *jälke^WG>n*
* *jälje0>n*
* *luke^WG>n*
* *luje0>n*
* *pölkä^WG>t^A*
* *pöl0ä0>tä*
* *tuhka^WG>t*
* *tuh0a0>t*
* *maka^WG>t^A*
* *ma0a0>ta*
* *kyke^WG>t^A*
* *ky0e0>tä*
* *sarka^WG>n*
* *sar0a0>n*
* *parku^WG>n*
* *par0u0>n*

Rule: **Gradation k3:0**

**Tests:**
* *huok3a^WG>t^A*
* *huo0a0>ta*

Rule: **Gradation k:v**

**Tests:**
* *ruoka^WG>n*
* *ruova0>n*
* *puku^WG>n*
* *puvu0>n*
* *koko^WG>t^A*
* *kovo0>ta*

Rule: **Gradation nk:ng**

**Tests:**
* *sivakka^AO>i2>ne*
* *sivak0o0>i>ne*

### Gradation t

Rule: **Gradation Nt:NN in first syllable after short vowel**

Rule: **Gradation t:0 for tt:t, Nt:N and vuote:vuoeksi**

**Tests:**
* *katto^WG>n*
* *kat0o0>n*
* *katt2o^WG>n*
* *katto0>n*

Rule: **ti:si**

**Tests:**
* *vete^E2I*
* *vesi0*
* *hirte^HMETA>hii*
* *hirs00>hii*

Rule: **t:j in Var variant vuojeksi**

Rule: **o:u in vuosi vuote vuoet -> vuuet optional variant**

**Tests:**
* *pe#rintö^WG>n*
* *pe#rinnö0>n*
* *lentä^WG>n*
* *lennä0>n*
* *kiertä^WG>n*
* *kier0ä0>n*
* *ymmärtä^WG>n*
* *ymmär0ä0>n*
* *alta^WG>s*
* *alla0>s*

Rule: **Gradation t:đ**

**Tests:**
* *pitä^WG^AO>i3>n*
* *piđ000>i>n*
* *lahta^WG>i3>n*
* *lahđ00>i>n*
* *lahte^WG>n*
* *lahđe0>n*
* *huutel^WG>^A*
* *huuđel0>a*

### Assimilation rules

Rule: **Alveolar assimilation for consonant stem l**
* *tul>^N^U*
* *tul>lu*

Rule: **Alveolar assimilation for consonant stem r**

Rule: **Alveolar assimilation for consonant stem s**

Rule: **j:0 in front of i**

## Vowel rules

### Vowel harmony rules

Thefa idea of having f.ex V:e, always to a specific vowel, is to not have conflicts in
twolc compilation. This improves compilation time (we assume) and it make Twolc
behave more predictable. Weird things happen sometimes with conflicts!
The downside is that often you have linguistic rules for vowels that are similar
for a group of vowels! This is most of case. And now you have to edit it for all
vowel separately one by one. Hopefully, we can make sure we don't forget to do it
too often, by having more user feedback, especially from the paradigms in the dictionary.

####  For each Vowel separately

Rule: **^V:e**

**Tests:**
* *lapse^HMETA>h^V^Vn*
* *laps00>heen*
* *lume^HMETA>h^V^Vn*
* *lum00>heen*
* *mieh^HMETA>h^V^Vn*
* *mieh0>heen*

Rule: **^V:a**

**Tests:**

* *maa>h^Vn*
* *maa>han*

Rule: **^V:i**

**Tests:**
* *poi6ka^AO^HMETA>h^V>i2*
* *poik000>hi>i*
* *kuva^AO^HMETA>h^V>i2*
* *kuv000>hi>i*

Rule: **^V:o**

####  (the old system) 
with variables (Vx/Vy) instead of each vowel separately

Rule: **Back harmony for %^A: %^O: %^U:**

**Tests:**

* *kulke>^A*
* *kulke>a*

### Vow copying and metathesis

Rule: **Vow copying in short h-illative and short partitive sg**

**Tests:**

* *heinä>^V*
* *heinä>ä*
* *syksy>^V*
* *syksy>y*

Rule: **Vow copying in partitive of words ending in io, ia**

Rule: **Vow copying in long h sg forms both part one and part two**

Rule: **Vow copying in long h pl forms**

* *sivakka^AO^HMETA>h^V>i2n*
* *sivakk000>ho>in*

Rule: **a to o and metathesis in h forms in pl of a-stems**

* *paivukko>^V*
* *paivukko>o*

Rule: **Stem deletion in h-illative**

**Tests:**

* *syksy^HMETA>h^V^Vn*
* *syks00>hyyn*

### Stem alternation rules

### e rules

Rule: **e:i in nom.sg. of e-stems and in n_23ia kauhia hopia in Var**

* *ove^E2I*
* *ovi0*

* *kauhe^E2I^¤>^A*
* *kauhi00>a*

Rule: **e:0 in consonant stems and illative plural**

* *tyvene^Por^WG>n*
* *tyvene00>n*

**Tests:**

* *kiele>ten*
* *kiel0>ten*
* *ytime^HMETA>h^V^V>*
* *ytim00>hee>*
* *elläime^HMETA>h^V^V>*
* *elläim00>hee>*
* *aukaise>i3*
* *aukais0>i*
* *vuote^HMETA>hii*
* *vuos00>hii*

Cns:0 in hoppe- hope-a in Var @RULENAME@ Jok

### i rules
The -i- rules require different i-s for different POS.

Rule: **i:0**

### a rules

Rule: **a:0 before Pret and Pl i when rounded root vowel**

**Tests:**

* *varma^HMETA>h^V^Vn*
* *varm00>haan*
* *rakkaa^VDEL^WG>s*
* *rak0a000>s*

* *otta^WG>i3n*
* *ot000>in*

* *loistaava^WG>i2>ss^A*
* *loistaav00>i>ssa*

Rule: **a:o before Pl i and Pret i **

* *matka^Por^AO>i2*
* *matko00>i*

Rule: **ä:ö before Pl i**

* *kala^WG^AO>i2>tten*
* *kalo00>i>tten*

* *kaula^WG^AO>i2>tten*
* *kaulo00>i>tten*

**Tests:**

* *sivakka^WG^AO>i2>tten*
* *sivak0o00>i>tten*
* *kulkkiija^AO>i2>tten*
* *kulkkiijo0>i>tten*

Rule: **a:i in 3-syll stems with long a and i**

**Tests:**
* ★*kuva^A2I>i2* (is not standard language)
* ★*kuva0>i* (is not standard language)
* *kuv0a^A2I>i2*
* *kuvvi0>i*

* *opettaaja^WG>i2>ss^A*
* *opettaaji0>i>ssa*

* *opettaja^WG^A2I>ss^A*
* *opettaji00>ssa*

* *opettaaja^WG>i2>tten*
* *opettaaji0>i>tten*

* *opettaaja>i2>t^A*
* *opettaaji>i>ta*

* *opettaaja>i2*
* *opettaaji>i*

* *opettaaja^HMETA>hiin*
* *opettaaj00>hiin*

* *opettaaja>i2>n^A*
* *opettaaji>i>na*

* *opettaaja>i2>ne*
* *opettaaji>i>ne*

* ★*opettaaja>i2>ne* (is not standard language)
* ★*opettaaja>i>ne* (is not standard language)

* *opettaja^WG^A2I>tten*
* *opettaji00>tten*
* *opettaja^A2I>^A*
* *opettaji0>a*

* *opettaja^HMETA>hiin*
* *opettaj00>hiin*
* *opettaja^A2I>n^A*
* *opettaji0>na*

* ★*opettaja^A2I>n^A* (is not standard language)
* ★*opettaja0>na* (is not standard language)

Rule: **a:i in 3-syll stems with long a and i**

#### Shortening

Rule: **Shortening of long vowel in front of i**

## Other Vowel rules 
(two A:e rules and one ä:0)

Rule: **a:e in comparative**

**Tests:**

* ★*loistaava>mpi* (is not standard language)
* ★*loistaave>mpi* (is not standard language)
* *loistaava>mpi*
* *loistaava>mpi*
* ★*vahva>mpi* (is not standard language)
* ★*vahva>mpi* (is not standard language)
* *vahva>mpi*
* *vahve>mpi*

Rule: **a:e in passives**

Rule: **ä:0**

**Tests:**

* *kehä>i2>ss^A*
* *keh0>i>ssä*
* *päivä>i2>in*
* *päiv0>i>in*
* *jyv0ä>i2>in*
* *jyvv0>i>in*
* ★*kehä>i2>ss^A* (is not standard language)
* ★*kehä>i>ssä* (is not standard language)
* *pää>i2>ss^A*
* *p0ä>i>ssä*

Rule: **ö:0**

Rule: **o:0**

## Gemination tests

* ★*kuv0a^A0>i2>n^A* (is not standard language)
* ★*kuvvi0>i>na* (is not standard language)
* ★*poi6ka^A0>i2>n^A* (is not standard language)
* ★*poiki0>i>na* (is not standard language)

* ★*poi6ka^A2I>i2>n* (is not standard language)
* ★*poika0>i>n* (is not standard language)
* ★*poi6ka^A2I>i2* (is not standard language)
* ★*poika0>i* (is not standard language)

* *aika^Por^AO>i2>n^A*
* *aiko00>i>na*
* *aika^Por^AO>i2>ne*
* *aiko00>i>ne*

* *kuv0a^Por^A2I>i2>n*
* *kuvvi00>i>n*
* *kuv0a^Por^A2I>i2*
* *kuvvi00>i*

* *kuva^Por^A0>i2>ne*
* *kuv000>i>ne*
* ★*kuv0a^Por^A0>i2>ne* (is not standard language)
* ★*kuvvi00>i>ne* (is not standard language)
* ★*kuva^Por^A0>i2>ne* (is not standard language)
* ★*kuva00>i>ne* (is not standard language)

* *poi6ka^Por^A0>i2>ne*
* *poik000>i>ne*
* ★*poi6ka^Por^A0>i2>ne* (is not standard language)
* ★*poika00>i>ne* (is not standard language)
* ★*poi6ka^Por^A0>i2>ne* (is not standard language)
* ★*poiki00>i>ne* (is not standard language)

* ★*poi6ka^A2I>i2>n* (is not standard language)
* ★*poika0>i>n* (is not standard language)

* *sop0i>^V*
* *soppi>i*

* *vuot0e>i2>^V>n*
* *vuoss0>i>i>n*

* ★*vuot0e>i2>^V>n* (is not standard language)
* ★*vuott0>i>i>n* (is not standard language)

* *housu>i2>le*
* *housu>i>le*

* *hirt0e>i2>^V*
* *hirss0>i>i*

* ★*hirt0e>i2>^V* (is not standard language)
* ★*hirtt0>i>i* (is not standard language)

* *ant0a>^Vt*
* *antta>at*

* *ant0a>^V*
* *antta>a*

* *ant0a>^V>v^A*
* *antta>a>va*

* *ant0a>^V>v^At*
* *antta>a>vat*

* *aik0a^Por>^V*
* *aikka0>a*

* *kiv0e>i2>^V*
* *kivv0>i>i*

**Tests:**
* *kal0a>^V*
* *kalla>a*
* *kuv0a>^V*
* *kuvva>a*
* *suome>^V*
* *suome>e*
* *lauk0e>^V*
* *laukke>e*
* *tek0e>^V*
* *tekke>e*
* *kat0o>^V>t*
* *katto>o>t*
* *kal0a^Por^AO>i2*
* *kallo00>i*
* *kir0o>^V>t*
* *kirro>o>t*
* *san0a^AO>i2*
* *sanno0>i*
* *jout0u>^V*
* *jouttu>u*
* *puh0u>^V*
* *puhhu>u*
* *näk0y>^V*
* *näkky>y*
* *lev0y>^V*
* *levvy>y*
* *näk0ö>^V*
* *näkkö>ö*
* *pör0ö>^V*
* *pörrö>ö*
* ★*perin0ö^WG>n* (is not standard language)
* ★*perinnö0>n* (is not standard language)
* *tiet0ä>^Vt*
* *tiettä>ät*
* *as0u>^Vt*
* *assu>ut*
* *el0ä>^V*
* *ellä>ä*
* *jalk0a>^V*
* *jalkka>a*
* *järk0e>^V*
* *järkke>e*
* *murt0o>^V*
* *murtto>o*
* *polk0u>^V*
* *polkku>u*
* *särk0y>^V*
* *särkky>y*
* *lämp0ö>^V*
* *lämppö>ö*
* *pölk0ä>^V*
* *härk0ä>^V*
* *härkkä>ä*
* *kerk0i>^Vn*
* *kerkki>in*
* *lauk0e>i7s*
* *laukke>is*
* *särk0y>i7s*
* *särkky>is*

Rule: **o:0**

Rule: **o:0**

Rule: **o:0**

* * *

<small>This (part of) documentation was generated from [src/fst/phonology.twolc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/phonology.twolc)</small>

---


# Kven morphological transducer

Beware of remnants from the Finnish file.
Take nothing at face value!

* **+Ex/N** - This tag is not added in lexc. The POS tag before derivation is converted into this tag when compiling FST for disambiguation.
* **+Ex/A** - This tag is not added in lexc. The POS tag before derivation is converted into this tag when compiling FST for disambiguation.
* **+Ex/V** - This tag is not added in lexc. The POS tag before derivation is converted into this tag when compiling FST for disambiguation.

## Tags for POS
* **+A** = Adjective
* **+Adv** = Adverb
* **+CC** = Conjunction
* **+CS** = Subjunction
* **+Interj** = Interjection
* **+N** = Noun
* **+Num** = Numerals
* **+Pcle** = Participle?
* **+Po** = Postposition
* **+Pr** = Preposition
* **+Pron** = Pronomen
* **+V** = Verb
* **+Neg** = Negation verb ei
* **+ConNeg** = Negation form of verb
* **+Prop** = Propernoun
* **+Ord** = Ordinal
* **+ABBR** = Abbreviation
* **+Symbol** = independent symbols in the text stream, like £, €, ©
* **+ACR** = Acronym
* **+TV** = Transitive verb
* **+IV** = Intansitive verb
* **+Arab** = Arabic
* **+Coll** = Collective numeral
* **+Rom** = Roman numerals I, II, ...
* **+Dyn** = Dynamically created acronym

## Tags for grammar

### Pronoun types
* **+Pers** = Personal
* **+Dem** = Demonstrative
* **+Interr** = Interrogative
* **+Refl** = Reflexive
* **+Recipr** = Reciprocal
* **+Rel** = Relative
* **+Indef** = Indefinitue
* **+Qu** = Quantity

### Number
* **+Sg** = Singular
* **+Pl** = Plural

Number-person

* **+Sg1** = Singular 1
* **+Sg2** = Singular 2
* **+Sg3** = Singular 3
* **+Pl1** = Plural 1
* **+Pl2** = Plural 2
* **+Pl3** = Plural 3
* **+PxSg1** = Poss suff: the owner is Singular 1
* **+PxSg2** = Poss suff: the owner is Singular 2
* **+PxSg3** = Poss suff: the owner is Singular 3
* **+PxPl1** = Poss suff: the owner is Plural 1
* **+PxPl2** = Poss suff: the owner is Plural 2
* **+PxPl3** = Poss suff: the owner is Plural 3

### Case

* **+Nom** = Nominative
* **+Gen** = Genitive
* **+Acc** = Accusative, for pronouns, but is it correct?
* **+Ine** = Inessive
* **+Ill** = Illative
* **+Ela** = Elative
* **+Ade** = Adessive
* **+Abe** = Abessive
* **+All** = Allative
* **+Abl** = Ablative
* **+Ess** = Essive
* **+Tra** = Translaive
* **+Ins** = Instructive
* **+Com** = Comitative
* **+Par** = Partitive

### Comparatives
* **+Compar** = Comparative
* **+Superl** = Superlative

### Finite verbs
* **+Pass** = Passive
* **+Ind** = Indicative
* **+Act** = Active
* **+Prs** = Presens
* **+Prt** = Preteritum
* **+Imprt** = Imperative
* **+Cond** = Conditional
* **+Pot** = Potential

### Infinite verbs
* **+Inf** = Infinitive
* **+Lat** = lative (the infinitive, used in Apertium)
* **+PrsPrc** = Presence Particip
* **+PrfPrc** = Preteritum Particip
* **+Inf3** = Infinite 3

### Punctuation
* **+CLB** = Clause boundary
* **+PUNCT** = Punctuation mark
* **+HYPH** = Hyphenation mark
* **+Attr** = Attributive form, hmm, check, for names?
* **+LEFT** = left parenth
* **+RIGHT** = right parenth
* **+CLBfinal**  Sentence final abbreviated expression ending in full stop, so that the full stop is ambiguous

### Speller tags
* **+Err/Orth**  misspelling or nor normative form. It will be included only in desc, not in norm.
* **+Err/Hyph** =
* **+Err/Lex** =
* **+Err/SpaceCmp** =
* **+Err/MissingSpace** =

### Usage tags

* **+Use/-PMatch** = for tokenisation
* **+Use/PMatch** = for tokenisation
* **+Use/-Spell** = Excluded in speller
* **+Use/SpellNoSugg** = recognized but not suggested in speller
* **+Use/-PLX** =
* **+Use/NG** only accept, not generate (for MT and Oahpa use)
* **+Use/GC** only retained in the HFST Grammar Checker disambiguation analyser
* **+Use/-GC** never retained in the HFST Grammar Checker disambiguation analyser
* **+Use/Circ** for numerals, copied from sme

### Compounds
* **+Cmp** =
* **+Cmp/SplitR** =
* **+Cmp/Hyph** - on dynamic compounds that have a hyphen (in use?)
* **+CmpNP/First** - ... only be first part in a compound or alone
* **+CmpNP/None** =
* **+OLang/ENG** = Language of common names
* **+OLang/FIN** = Language of common names
* **+OLang/NNO** = Language of common names
* **+OLang/NOB** = Language of common names
* **+OLang/RUS** = Language of common names
* **+OLang/SMA** = Language of common names
* **+OLang/SME** = Language of common names
* **+OLang/SWE** = Language of common names
* **+OLang/UND** = Language of common names

### Derivation
* **+Der** =
* **+Der1** =
* **+Der2** =
* **+Der3** =
* **+Der4** =
* **+Der5** =
* **+Der/A** = deriving adjectives from verbs
* **+Der/minen** =
* **+Der/s** = deriving numerals

## Clitic tags
* **+Clt** =
* **+Qst** = Focusclitic question -ko
* **+Foc/han** = Focusclitic -han
* **+Foc/kaan** = Focusclitic -kaan
* **+Foc/kin** = Focusclitic -kin
* **+Foc/pa** = Focusclitic -pa
* **+Foc/s** = Focusclitic -s
* **+Foc/pas** = Focusclitic -pas

## Tokeniser tags
* **+MWE** = multiword expression, for tokenisation
* **+v1** =
* **+v2** =
* **+Gram/TAbbr**:  Transitive abbreviation (it needs an argument)
* **+Gram/NoAbbr**:  Intransitive abbreviations that are homonymous with more frequent words. They should only be considered abbreviations in the middle of a sentence.
* **+Gram/TNumAbbr**:  Transitive abbreviation if the following constituent is numeric
* **+Gram/NumNoAbbr**:  Transitive abbreviations for which numerals are complements and normal words. The abbreviation usage is less common and thus only the occurences in the middle of the sentence can be considered as true cases.
* **+Gram/TIAbbr**:  Both transitive and intransitive abbreviation
* **+Gram/IAbbr**:  Intransitive abbreviation (it takes no argument)
* **+Gram/3syll**: trisyllabic verbs

## Semantic tags

* **+Sem/Ani** = Animal names
* **+Sem/Fem** = Female names
* **+Sem/Mal** = Male names
* **+Sem/Obj** = Names of objects
* **+Sem/Org** = Names of organisations
* **+Sem/Plc** = Place names
* **+Sem/Sur** = Surnames
* **+Sem/ID** = ID
* **+Sem/Build** = 
* **+Sem/Build-room** = 
* **+Sem/Cat** = 
* **+Sem/Curr** = 
* **+Sem/Date** = 
* **+Sem/Domain** = 
* **+Sem/Domain_Hum** = 
* **+Sem/Dummytag** = 
* **+Sem/Edu** = 
* **+Sem/Edu_Hum** = 
* **+Sem/Event** = 
* **+Sem/Food-med** = 
* **+Sem/Group_Hum** = 
* **+Sem/Hum** = 
* **+Sem/Lang** = 
* **+Sem/Mat** = 
* **+Sem/Measr** = 
* **+Sem/Money** = 
* **+Sem/Obj-el** = 
* **+Sem/Obj-ling** = 
* **+Sem/Org_Prod-audio** = 
* **+Sem/Org_Prod-vis** = 
* **+Sem/Part** = 
* **+Sem/Prod-vis** = 
* **+Sem/Route** = 
* **+Sem/Rule** = 
* **+Sem/Sign** = 
* **+Sem/State** = 
* **+Sem/State-sick** = 
* **+Sem/Substnc** = 
* **+Sem/Time** = 
* **+Sem/Time-clock** = 
* **+Sem/Tool-it** = 
* **+Sem/Txt** = 
* **+Sem/Veh** = 
* **+Sem/Year** = 

## Dialect tags
* **+Dial/-Var** = Not Varanger
* **+Dial/-Por** = Not Porsanger
* **+Dial/-Jok** = Not Jokivarret
* **+Dial/Var** Varanger, short for +Dial/-Jok+Dial/-Por
* **+Dial/Por** Porsanger, short for +Dial/-Jok+Dial/-Var
* **+Dial/Jok** Jokivarret, short for +Dial/-Por+Dial/-V

## Lexeme disambiguation tags
* **+Hom1**:  Homonymy
* **+Hom2**:  Homonymy

## Stem variant tags
* **+v1**:  variant 1
* **+v2**:  variant 2
* **+v3**:  variant 3
* **+v4**:  variant 4
* **+v5**:  variant 5
* **+v6**:  variant 6
* **+v7**:  variant 7

## Phonological symbols

* **i2** = plural i of nouns
* **i3** = past tense i of verbs
* **i4** = i in conditional isi of most verbs (without gemination)
* **i5** = superlative i of adjectives
* **i6** = i:j in poika:pojan
* **i7** = i in conditional of contract verbs (with gemination)
* **p2** = always p
* **t2** = always t, cf. katt2oma always tt, underlying -ts-
* **t3** = t participating in gradation, but not in t:s
* **t4** = t for Finnish täytyy (no gemination, no nothing)
* **k2** = always k
* **k3** = k3 never k:v, contrary to k
* **^A** = Vowel harmony a/ä
* **^O** = Vowel harmony o/ö
* **^U** = Vowel harmony u/y
* **^V** = Vowel copying
* **^N** = tulˆNut, kävel^N^Ut
* **^E2I** = for e to i change
* **^A2I** = for a to i change
* **^I0** = i to 0 in vanha_a_21 -Por with i endings: tooline
* **^E0** = e to 0 in vanha_a_32 and vanha_n_32 bc we add b4 dial trigger, for twolc struc.
* **^HMETA** = for h metathesis syksy - sykshyyn
* **^AO** = a:0
* **^A0** = a:o rannoissa
* **^WG** = Weak grade matto - maton
* **^TJ** = vuote vuoje
* **^T0** = tytär tyär tytärtä tyärtä in Var
* **^UU** = vuote vuue
* **^TES** =  in use?
* **^VDEL** = Deleting long vowel in rakkaa- > rakas
* **^EDEL** = Deleting e in front of consonant
* **^AE** = for a to e change
* **^M2N** = for m to n in lumi lunta
* **^¤** = potecting against e:i word-finally (nalle, liike)
* **^Por** -- Porsanger  dialect
* **^Var** -- Varanger   dialect
* **^Jok** -- Jokivarret dialect
* **^End** -- End of word, since the # tags don't work properly
* »
* «
* > (written with square brackets, see the root.lexc file)
* < (written with square brackets, see the root.lexc file)

## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

| Flag | Explanation
| --- | --- 
|  **@P.NeedNoun.ON@** | (Dis)allow compounds with verbs unless nominalised
|  **@D.NeedNoun.ON@** | (Dis)allow compounds with verbs unless nominalised
|  **@C.NeedNoun@** | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Flag | Explanation
| --- | --- 
|  **@P.CmpFrst.FALSE@** | Require that words tagged as such only appear first
|  **@D.CmpPref.TRUE@** | Block such words from entering ENDLEX
|  **@P.CmpPref.FALSE@** | Block these words from making further compounds
|  **@D.CmpLast.TRUE@** | Block such words from entering R
|  **@D.CmpSuff.TRUE@** | Block such words from entering R
|  **@P.CmpSuff.TRUE@** | Mark that we have passed R
|  **@D.CmpNone.TRUE@** | Combines with the next tag to prohibit compounding
|  **@U.CmpNone.FALSE@** | Combines with the prev tag to prohibit compounding
|  **@P.CmpOnly.TRUE@** | Sets a flag to indicate that the word has passed R
|  **@D.CmpOnly.FALSE@** | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

| Flag | Explanation
| --- | --- 
|  **@U.Cap.Obl@** | Allowing downcasing of derived names: deatnulasj.
|  **@U.Cap.Opt@** | Allowing downcasing of derived names: deatnulasj.
|  **@C.ErrOrth@**    | tbw
|  **@D.ErrOrth.ON@**     | tbw
|  **@P.ErrOrth.ON@**    | tbw
|  **@R.ErrOrth.ON@**    | tbw
|  **@P.Pmatch.Loc@** | Used on multi-token analyses; tell hfst-tokenise/pmatch where in the form/analysis the token should be split.
|  **@P.Pmatch.Backtrack@** | Used on single-token analyses; tell hfst-tokenise/pmatch to backtrack by reanalysing the substrings before and after this poin in the form (to find combinations of shorter analyses that would otherwise be missed)

Pronoun flags

| Flag | Explanation
| --- | --- 
|  **@U.pron.nom@** | tbw
|  **@U.pron.gen@** | tbw
|  **@U.pron.gen2@** | tbw
|  **@U.pron.ill@** | tbw
|  **@U.pron.par@** | tbw
|  **@U.pron.par2@** | tbw
|  **@U.pron.par3@** | tbw
|  **@U.pron.ess@** | tbw
|  **@U.pron.tra@** | tbw
|  **@U.pron.ine@** | tbw
|  **@U.pron.ela@** | tbw
|  **@U.pron.all@** | tbw
|  **@U.pron.ade@** | tbw
|  **@U.pron.abl@** | tbw
|  **@P.compound.block@** | tbw
|  **@D.compound.block@** | tbw

## Basic lexica, pointing to the other lexicon files

Here is the Root lexicon, pointing to all the parts of speech:

 **LEXICON Root**

* AdjectiveRoot ;
* Adverb ;
* Conjunction ;
* Interjection ;
* NUM ;
* NounRoot ;
* Particle ;
* Postposition ;
* Preposition ;
* Pronoun ;
* ProperNoun ;
* Punctuation ;
* Symbols ;
* VerbRoot ;
* Subjunction ;
* Abbreviation ;
* Acronym ;

**LEXICON Acronym** pointing to:
* Acronym-fkv ;
* Acronym-smi ;

**LEXICON Abbreviation** pointing to:
* Abbreviation-fkv ;
* Abbreviation-smi ;

* * *

<small>This (part of) documentation was generated from [src/fst/root.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/root.lexc)</small>

---

# Kven language adjectives

AdjectiveRoot on alkuvaiheessa vielä.

TYYPPI 1: Kaksitavuiset lyhykäisvokaaliset rangat

Kaksitavuiset lyhykäisvokaaliset rangat
* laiha a_11_AO ; 
* hieno a_11 ;  needs own adj lex tag

* uusi:uute a_12_si ; 

TYYPPI 2: Usheempitavuiset lyhykäisvokaaliset rangat

Usheempitavuiset lyhykäisvokaaliset rangat

Usheempitavuiset (Konsonanttirankaiset?)
* tyven:tyven a_22 ; 
* vasen:vase a_22_ma ; 

Usheempitavuiset (Ekstrakonsonanttirankaiset?)
* veres:vere a_22_excns ; 

Usheempitavuiset -nen-adjektiivit
* sininen:sini a_22_inen_odd ; 
* vestainen:vestai a_22_inen_odd ; 
* konkreettinen:konkreetti a_22_inen ; 

(Usheempitavuiset) -ton-adjektiivit, Pariton määrä tavuja

(Usheempitavuiset) -ton-adjektiivit, Parillinen määrä tavuja

TYYPPI 3: Pitkävokaaliset rangat

Pitkävokaaliset rangat: (Yksirankaiset kaksitavuiset (Kokoontumanom.?) ?)
* valkkee:valkke a_31_ee ; 
* auttii:autt2ii a_31_ii ; 

Pitkävokaaliset Konsonanttirankaiset (Kokoontuma?)

## 2. Vokaalirankaiset

## 2.1 Kaksitavvuiset lyhykäisvokaaliset rangat

## 2.2. Usseempitavvuiset lyhykäisvokaaliset rangat

## 2.3 Yksirankaiset kaksitavuiset (Kokoontumanom.?)

## 3. Konsonanttirankaiset

## 3.1. Kaksitavuiset

## 3.2 Usseaempitavuiset

## 3.3 Kokoontuma

4. Ekstrakonsonanttirankaiset

## 4.1 ekstrakonsonanttirankaiset

4.2 -nen-adjektiivit

4.3 -ton-adjektiivit

* * *

<small>This (part of) documentation was generated from [src/fst/stems/adjectives.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/adjectives.lexc)</small>

---



Sannoi ja haamui listan mukkaan

Adverbiaaleja myötä?

TT: Ei. Tässä pitää olla adverbeja vaan.
Adverbiaali on syntaktinen kategoria ja saa
analyysinsa eri ohjelmassa (src/syntax/disambiguation.cg3)

* paikala adv ;  ... on esim. substantiivi

* * *

<small>This (part of) documentation was generated from [src/fst/stems/adverbs.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/adverbs.lexc)</small>

---

# Closed parts of speech

Tästä tiedostosta löytyvät suljetut sanaluokat.

Particle leksikossa on vain kuusi sanaa

Subjunction -leksikossa on tärkeimmät sanat (koska, että, jos, ..)

Conjunction -leksikossa on vain pari sanaa. joko - tai

Interjection -leksikossa on vain pari sanaa.  yäk, kääk, nono

* * *

<small>This (part of) documentation was generated from [src/fst/stems/closed.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/closed.lexc)</small>

---

File containing abbreviations 

Tämä on saamenkielinen lyhennelista. Se pitää vaihtaa.

* * *

<small>This (part of) documentation was generated from [src/fst/stems/fkv-abbreviations.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/fkv-abbreviations.lexc)</small>

---


# Substantiivit

LEXICON NounRoot 

Nomenityyppit s.147 (Eira published book 2014) (Niitähän oon 3)

TYYPPI 1: Kaksitavuiset lyhykäisvokaaliset rangat

* 2.1 Kaksitavuiset ( juoppo, syksy, puku )               = `n_11`
* X.X Kaksitavuiset ( sana : sanoissa, aika )  a -> o:ksi = `n_11_AO`
* X.X Kaksitavuiset ( kuva : kuvissa )         a -> i:ksi = `n_11_A0_A2I`
* X.X Kaksitavuiset lånord ( färi : färi, pappi, tooli )  = `n_11_i`
- 2.1.1  Kaksitavuiset monikko (housut )                 = `n_11_pl`
Kaksitavuiset monikko -i (sortsit)              = `n_11_i_pl`
- 2.1.2  Kaksitavuiset ( joki:joke, ovi:ove ) e -> i:ksi = `n_11_E2I`
Kaksitavuiset monikko (hykset) e -> i:ksi       = `n_11_E2I_pl`
* 3.1 Kaksitavuiset (CNS-rankaiset?) ( pieni, kieli )     = `n_12`
* 3.1.1  ( lumi:lunta, toimi, liemi )                     = `n_12_mi`
* 3.1.2  ( käsi, vuosi )                                  = `n_12_si`
* X.X.X  (kusi, kuusi) toistaiseksi vain nämä 2 sanaa     = `n_12_kusi`
* 3.1.3  ( lapsi )                                        = `n_12_lapsi`
* 3.1.4  ( mies )                                         = `n_12_mies`

TYYPPI 2: Usheempitavuiset lyhykäisvokaaliset rangat

* 2.2  Usseempitav. ( opettaaja )                         = `n_21`
- 2.2.2  U.tav. monikko oi (perintö,kurkkio,paijukko )   = `n_21_oi`
- 2.2.2  U.tav. monikko oi (kulkkiija, asia) a -> o:ksi  = `n_21_oi_AO`
- 2.2.1  Usseempitav. odd ( kajava )                     = `n_21_odd`
- 2.2.1  Usseempitav. odd ( meininki, tunturi )          = `n_21_odd_i`

* 3.2 Usseempitavuiset ( tytär )
- 3.2.1 ( tytär, taival, paimen )                        = `n_22`
- 3.2.2 ( elläin: elläimen)                              = `n_22_m`
-       ( vanhimet:vanhi )                               = `n_22_m_pl`

* 4.3  ton-adjektiivit (onneton:onne) (vain Adj)          = `a_22_ton`
- 3.2.3 (rakkhaus)                                       = `n_22_s`
* 4.1 veres-nominit ( veres, kokkous) ekstraCNSranka      = `n_22_excns`
* 4.1.1 veres-nominit monikko ( veljekset) ekstraCNSranka = `n_22_excns_pl`
- 4.2.2 -inen-nominit odd (vihrinen / ihminen)           = `n_22_inen_odd`
* 4.2 –inen-nominit ( kainulainen)                        = `n_22_inen`
- 4.2.1 -inen-nominit Pl (tervheiset)                    = `n_22_inen_pl`

TYYPPI 3: Pitkävokaaliset rangat

* 1. Yksitavuiset / Vi ( maa, yö )                        = ` n_31`
* 1.2  Yksitavuiset monikko/ Vi ( häät )                  = ` n_31_pl`
* 1.1 Yksitavuiset / ai ( tuorestai )                     = ` n_31_ai`
- 2.3 Kokkoontumanom. ( valkkee)                         = ` n_31_ee`
- 2.3 Kokkoontumanom. ( filee, teevee) Lainasanat!     = `n_31_lainasana_ee`
- 2.3.1 Kokkoontumanom. ( assii, laattii )                = ` n_31_ii`
- 3.3.1 (opas) & 3.3.2 (asukas) & rakas                   = ` n_32_as`
- 3.3.3 (ruvis, kaunis)                                   = ` n_32_is`
- 3.3.4 (huonet, hyljet, perkele)                         = ` n_32_et`
- 3.3.5 (kirves)                                          = ` n_32_ts`

* valkkee:valkke n_31_ee ;  Is noun, bål
* veres:vere n_22_excns ; 
* käsi:käte n_12_si ; 
* assii+Dial/Por:assi n_31_ii ; 
* meininki:meininki n_21_odd_i ; 
* tytär:tyttär n_22 ; 
* lumi:lu n_12_mi ; 
* yö:yö n_31 ; 

Leksikkonimet Eiran mukaan
* n1 Eira 1
* n12 Eira 1.1 etc
Luokat vanha_n_21  n12 vanha_n_22 vanha_n_22odd vanha_n_32 vanha_n_32s vanha_n_32m vanha_n_1 vanha_n_23 vanha_n_33as n-33is vanha_n_33t vanha_n_41 vanha_n_42 vanha_n_42odd Eiran v. 2009 mukaan

2007 s.87
* 1. Yksitavuiset / Vi ( maa )		 	            = vanha_n_1
* 1.1 Yksitavuiset / ai ( tuorestai )		 	    = vanha_n_1ai
* 1.2. Yksitavuiset monikko/ Vi ( häät )		  	= vanha_n_1pl
* 2. Vokaalirankaiset						 	            =
- 2.1 Kaksitavuiset ( aika, pappi )			 	    = vanha_n_21
- 2.1.1. Kaksitavuiset monikko (housut )   	= vanha_n_21pl
- 2.1.2. Kaksitavuiset (joki: joke )         = vanha_n_21ie
- 2.2. Usseempitav. ( opettaaja )		     	 	  = vanha_n_22
- 2.2.1. Usseempitav. odd ( kajava )	       	= vanha_n_22odd
- 2.2.1. Usseempitav. odd ( meininki, tunturi )	= vanha_n_22oddi
- 2.2.2. Usseempitav. monikko oi ( kulkkiija )	= vanha_n_22oi
- 2.3 Kokkoontumanom. ( valkkee,)	      	 	= vanha_n_23
- 2.3.1 Kokkoontumanom. ( assii )    		 	= vanha_n_23ii
* 3. Konsonanttirankaiset
- 3.1 Kaksitavuiset ( pieni, kieli )		   		= vanha_n_31
- 3.1.1. lumi:lumen:lunta                  		= vanha_n_31m
- 3.1.2. ( käsi, vuosi )					   		= vanha_n_31si
- 3.1.3. ( lapsi )		 	         	   		= vanha_n_31lapsi
- 3.1.4. ( mies )			         		   		= vanha_n_31mies
- 3.2 Usseempitavuiset ( tytär )
- 3.2.1 ( tytär )                           		= vanha_n_32
- 3.2.2. ( elläin: elläimen                		= vanha_n_32m
- 3.2.3. (rakkhaus)					   		= vanha_n_32s
- 3.3 Kokkoontumanom. ( opas, huonet)
- 3.3.1 (opas)                             		= vanha_n_33as
- 3.3.2 (asukas)                           		= vanha_n_33as
- 3.3.3. (ruvis)                           		= vanha_n_33is
- 3.3.4 (huonet)                           		= vanha_n_33t
- 3.3.5 (kirves)						   		= vanha_n_33ts
* 4. Ekstrakonsonanttirankaiset
- 4.1 veres-nominit ( veres, kokkous)	   		= vanha_n_41
- 4.1.1. veres-nominit monikko ( veljekset)		= vanha_n_41pl
- 4.2 –inen-nominit ( kainulainen)		   		= vanha_n_42 = nen
- 4.2.1 -inen-nominit Pl (tervheiset)	   		= vanha_n_42pl = nen
- 4.2.2 -inen-nominit odd (vihrinen)	   		= vanha_n_42odd = nen

* * *

<small>This (part of) documentation was generated from [src/fst/stems/nouns.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/nouns.lexc)</small>

---

# Kven numerals

Numerals have been split in three sections, the compounding parts
of cardinals and ordinals, and the non-compounding ones:

* Numeral examples:*

The compounding parts of cardinals are the number multiplier words.

* cardinal examples:*
* *viiđele:* `viisi+Num+Sg+All` (Eng. !five)
* *tuhatta:* `tuhat+Num+Sg+Par` (Eng. !thousand)

The suffixes only appear after cardinal multipliers

* Cardinal multiplicants examples:*

The compounding parts of ordinals are the number multiplier words.

* Ordinal numerals examples:*
* *neljes:* `neljes+A+Ord+Sg+Nom`
* *viiđenelle:* `viiđes+A+Ord+Sg+All`
* *tuhanetta:* `tuhanes+A+Ord+Sg+Par`

The suffixes only appear after cardinal multipliers

* Ordinal multiplicants examples:*

There is a set of numbers or corresponding expressions that work like them,
but are not basic cardinals or ordinals:

* Numeral others examples:*
* *viitisenkymmentä:* `viitisenkymmentä+Num`

## Numeral stem variation
Numerals follow the same stem variation patterns as nouns, some of these
being very rare to extinct for nouns. 

* Numerals 31 examples:*
* *yhtheen:* `yksi+Num+Sg+Ill`
* *yhtenä:* `yksi+Num+Sg+Ess`
* *yhđessä:* `yksi+Num+Sg+Ine`
* *yhđelä:* `yksi+Num+Sg+Ade`
* *yhtä:* `yksi+Num+Sg+Par`
* *yksii:* `yksi+Num+Pl+Par`
* *yksiin:* `yksi+Num+Pl+Gen`
* *ykshiin:* `yksi+Num+Pl+Ill`
* *yksinä:* `yksi+Num+Pl+Ess`
* *yksissä:* `yksi+Num+Pl+Ine`

* Numerals 31 back§ examples:*
* *kahtheen:* `kaksi+Num+Sg+Ill`
* *kahtena:* `kaksi+Num+Sg+Ess`
* *kahđessa:* `kaksi+Num+Sg+Ine`
* *kahđela:* `kaksi+Num+Sg+Ade`
* *kahta:* `kaksi+Num+Sg+Par`
* *kaksii:* `kaksi+Num+Pl+Par`
* *kaksiin:* `kaksi+Num+Pl+Gen`
* *kakshiin:* `kaksi+Num+Pl+Ill`
* *kaksina:* `kaksi+Num+Pl+Ess`
* *kaksissa:* `kaksi+Num+Pl+Ine`

* Numerals 8~5 examples:*
* *kolme:* `kolme+Num+Sg+Nom`
* *kolmheen:* `kolme+Num+Sg+Ill`
* *kolmena:* `kolme+Num+Sg+Ess`
* *kolmessa:* `kolme+Num+Sg+Ine`
* *kolmela:* `kolme+Num+Sg+Ade`
* *kolmee:* `kolme+Num+Sg+Par`
* *kolmii:* `kolme+Num+Pl+Par`
* *kolmiin:* `kolme+Num+Pl+Gen`
* *kolmhiin:* `kolme+Num+Pl+Ill`
* *kolmina:* `kolme+Num+Pl+Ess`
* *kolmissa:* `kolme+Num+Pl+Ine`

* Numerals 10 examples:*
* *nelje:* `nelje+Num+Sg+Nom`
* *neljee:* `nelje+Num+Sg+Par`
* *neljheen:* `nelje+Num+Sg+Ill`
* *neljenä:* `nelje+Num+Sg+Ess`
* *neljessä:* `nelje+Num+Sg+Ine`
* *neljelä:* `nelje+Num+Sg+Ade`
* *neljii:* `nelje+Num+Pl+Par`
* *neljiin:* `nelje+Num+Pl+Gen`
* *neljein:* `nelje+Num+Pl+Gen` (Eng. !harvinainen muoto)
* *neljhiin:* `nelje+Num+Pl+Ill`
* *neljinä:* `nelje+Num+Pl+Ess`
* *neljissä:* `nelje+Num+Pl+Ine`

* Numerals 27 front examples:*
* *viitheen:* `viisi+Num+Sg+Ill`
* *viittä:* `viisi+Num+Sg+Par`
* *viiđessä:* `viisi+Num+Sg+Ine`
* *viiđelä:* `viisi+Num+Sg+Ade`
* *viitenä:* `viisi+Num+Sg+Ess`
* *viisissä:* `viisi+Num+Pl+Ine`
* *viissii:* `viisi+Num+Pl+Par`
* *viissiin:* `viisi+Num+Pl+Gen`
* *viitten:* `viisi+Num+Pl+Gen` (Eng. !harvinainen muoto)
* *viishiin:* `viisi+Num+Pl+Ill`
* *viisinä:* `viisi+Num+Pl+Ess`

* Numerals 27 back examples:*
* *kuutta:* `kuusi+Num+Sg+Par`
* *kuutena:* `kuusi+Num+Sg+Ess`
* *kuuđessa:* `kuusi+Num+Sg+Ine`
* *kuuđela:* `kuusi+Num+Sg+Ade`
* *kuusina:* `kuusi+Num+Pl+Ess`
* *kuusissa:* `kuusi+Num+Pl+Ine`
* *kuussii:* `kuusi+Num+Pl+Par`
* *kuussiin:* `kuusi+Num+Pl+Gen`
* *kuutten:* `kuusi+Num+Pl+Gen` (Eng. !harvinainen muoto)
* *kuushiin:* `kuusi+Num+Pl+Ill`

* Numerals 10n examples:*
* *kahđeksen:* `kahđeksen+Num+Sg+Nom`
* *kahđeksee:* `kahđeksen+Num+Sg+Par`
* *kahđeksheen:* `kahđeksen+Num+Sg+Ill`
* *kahđeksessa:* `kahđeksen+Num+Sg+Ine`
* *kahđeksella:* `kahđeksen+Num+Sg+Ade`
* *kahđeksenna:* `kahđeksen+Num+Sg+Ess`
* *kahđeksii:* `kahđeksen+Num+Pl+Par`
* *kahđeksiita:* `kahđeksen+Num+Pl+Par`
* *kahđeksiitten:* `kahđeksen+Num+Pl+Gen`
* *kahđekshiin:* `kahđeksen+Num+Pl+Ill`
* *kahđeksissa:* `kahđeksen+Num+Pl+Ine`
* *kahđeksinna:* `kahđeksen+Num+Pl+Ess`

* Numerals 10n front examples:*
* *yhđeksen:* `yhđeksen+Num+Sg+Nom`
* *yhđeksee:* `yhđeksen+Num+Sg+Par`
* *yhđeksheen:* `yhđeksen+Num+Sg+Ill`
* *yhđeksessä:* `yhđeksen+Num+Sg+Ine`
* *yhđeksellä:* `yhđeksen+Num+Sg+Ade`
* *yhđeksennä:* `yhđeksen+Num+Sg+Ess`
* *yhđeksii:* `yhđeksen+Num+Pl+Par`
* *yhđeksiitä:* `yhđeksen+Num+Pl+Par`
* *yhđeksiitten:* `yhđeksen+Num+Pl+Gen`
* *yhđekshiin:* `yhđeksen+Num+Pl+Ill`
* *yhđeksissä:* `yhđeksen+Num+Pl+Ine`
* *yhđeksinnä:* `yhđeksen+Num+Pl+Ess`

* Numerals 32 examples:*
* *kymmenen:* `kymmenen+Num+Sg+Nom`
* *kymmenheen:* `kymmenen+Num+Sg+Ill`
* *kymmenennä:* `kymmenen+Num+Sg+Ess`
* *kymmenessä:* `kymmenen+Num+Sg+Ine`
* *kymmenellä:* `kymmenen+Num+Sg+Ade`
* *kymmentä:* `kymmenen+Num+Sg+Par`
* *kymmenten:* `kymmenen+Num+Pl+Gen`
* *kymmeniitten:* `kymmenen+Num+Pl+Gen`
* *kymmenhiin:* `kymmenen+Num+Pl+Ill`
* *kymmenissä:* `kymmenen+Num+Pl+Ine`
* *kymmeninnä:* `kymmenen+Num+Pl+Ess`

* Numerals 9 examples:*
* *sata:* `sata+Num+Sg+Nom`
* *satana:* `sata+Num+Sg+Ess`
* *sađassa:* `sata+Num+Sg+Ine`
* *sathaan:* `sata+Num+Sg+Ill`
* *sattaa:* `sata+Num+Sg+Par`
* *sattoin:* `sata+Num+Pl+Gen`
* *sathoin:* `sata+Num+Pl+Ill`
* *sađoissa:* `sata+Num+Pl+Ine`
* *satoina:* `sata+Num+Pl+Ess`

* Numerals 46 examples:*
* *tuhat:* `tuhat+Num+Sg+Nom`
* *tuhantheen:* `tuhat+Num+Sg+Ill`
* *tuhantenna:* `tuhat+Num+Sg+Ess`
* *tuhanessa:* `tuhat+Num+Sg+Ine`
* *tuhatta:* `tuhat+Num+Sg+Par`
* *tuhanssii:* `tuhat+Num+Pl+Par`
* *tuhanssiitten:* `tuhat+Num+Pl+Gen`
* *tuhantten:* `tuhat+Num+Pl+Gen` (Eng. !harvinainen muoto)
* *tuhanshiin:* `tuhat+Num+Pl+Ill`
* *tuhansinna:* `tuhat+Num+Pl+Ess`
* *tuhansissa:* `tuhat+Num+Pl+Ine`

* Numerals 10 miljoona examples:*
* *miljoona:* `miljoona+Num+Sg+Nom`
* *miljoonanna:* `miljoona+Num+Sg+Ess`
* *miljoonassa:* `miljoona+Num+Sg+Ine`
* *miljoonaa:* `miljoona+Num+Sg+Par`
* *miljoonhaan:* `miljoona+Num+Sg+Ill`
* *miljoonii:* `miljoona+Num+Pl+Par`
* *miljooniitten:* `miljoona+Num+Pl+Gen`
* *miljoonhiin:* `miljoona+Num+Pl+Ill`
* *miljoonissa:* `miljoona+Num+Pl+Ine`
* *miljooninna:* `miljoona+Num+Pl+Ess`

* Numerals 5 examples:*
* *miljardi:* `miljardi+Num+Sg+Nom`
* *miljardhiin:* `miljardi+Num+Sg+Ill`
* *miljardii:* `miljardi+Num+Sg+Par`
* *miljardissa:* `miljardi+Num+Sg+Ine`
* *miljardinna:* `miljardi+Num+Sg+Ess`
* *miljardhiin:* `miljardi+Num+Pl+Ill`
* *miljardii:* `miljardi+Num+Pl+Par`
* *miljardiissa:* `miljardi+Num+Pl+Ine`
* *miljardiitten:* `miljardi+Num+Pl+Gen`
* *miljardiina:* `miljardi+Num+Pl+Ess`

* Numerals 5 more examples:*
* *Googol:* `Googol+Num+Sg+Nom`

* Numerals 5 moremore examples:*
* *pari:* `pari+Num+Sg+Nom`
* *parhiin:* `pari+Num+Sg+Ill`
* *parrii:* `pari+Num+Sg+Par`
* *parina:* `pari+Num+Sg+Ess`
* *parissa:* `pari+Num+Sg+Ine`
* *pariissa:* `pari+Num+Pl+Ine`
* *pariina:* `pari+Num+Pl+Ess`
* *parrii:* `pari+Num+Pl+Par`
* *parriin:* `pari+Num+Pl+Gen`
* *parhiin:* `pari+Num+Pl+Ill`

* Numerals 38 examples:*
* *ensimäinen:* `ensimäinen+A+Ord+Sg+Nom`
* *ensimäisenä:* `ensimäinen+A+Ord+Sg+Ess`
* *ensimäisessä:* `ensimäinen+A+Ord+Sg+Ine`
* *ensimäistä:* `ensimäinen+A+Ord+Sg+Par`
* *ensimäisten:* `ensimäinen+A+Ord+Pl+Gen`
* *ensimäissiitten:* `ensimäinen+A+Ord+Pl+Gen`
* *ensimäissii:* `ensimäinen+A+Ord+Pl+Par`
* *ensimäishiin:* `ensimäinen+A+Ord+Pl+Ill`
* *ensimäisinä:* `ensimäinen+A+Ord+Pl+Ess`
* *ensimäisissä:* `ensimäinen+A+Ord+Pl+Ine`

* Numerals 38 back examples:*
* *toinen:* `toinen+A+Ord+Sg+Nom`
* *toisheen:* `toinen+A+Ord+Sg+Ill`
* *toista:* `toinen+A+Ord+Sg+Par`
* *toisessa:* `toinen+A+Ord+Sg+Ine`
* *toisela:* `toinen+A+Ord+Sg+Ade`
* *toisena:* `toinen+A+Ord+Sg+Ess`
* *toisten:* `toinen+A+Ord+Pl+Gen`
* *toissiin:* `toinen+A+Ord+Pl+Gen`
* *toissii:* `toinen+A+Ord+Pl+Par`
* *toishiin:* `toinen+A+Ord+Pl+Ill`
* *toisissa:* `toinen+A+Ord+Pl+Ine`
* *toisina:* `toinen+A+Ord+Pl+Ess`

* Numerals 45 examples:*
* *kolmas:* `kolmas+A+Ord+Sg+Nom`
* *kolmantenna:* `kolmas+A+Ord+Sg+Ess`
* *kolmanessa:* `kolmas+A+Ord+Sg+Ine`
* *kolmanella:* `kolmas+A+Ord+Sg+Ade`
* *kolmantheen:* `kolmas+A+Ord+Sg+Ill`
* *kolmatta:* `kolmas+A+Ord+Sg+Par`
* *kolmanssii:* `kolmas+A+Ord+Pl+Par`
* *kolmanssiitten:* `kolmas+A+Ord+Pl+Gen`
* *kolmansissa:* `kolmas+A+Ord+Pl+Ine`
* *kolmansinna:* `kolmas+A+Ord+Pl+Ess`

* Numerals 45 fron examples:*
* *neljes:* `neljes+A+Ord+Sg+Nom`
* *neljentheen:* `neljes+A+Ord+Sg+Ill`
* *neljentennä:* `neljes+A+Ord+Sg+Ess`
* *neljenessä:* `neljes+A+Ord+Sg+Ine`
* *neljenellä:* `neljes+A+Ord+Sg+Ade`
* *neljettä:* `neljes+A+Ord+Sg+Par`
* *neljenssii:* `neljes+A+Ord+Pl+Par`
* *neljenssiitten:* `neljes+A+Ord+Pl+Gen`
* *neljenshiin:* `neljes+A+Ord+Pl+Ill`
* *neljensissä:* `neljes+A+Ord+Pl+Ine`
* *neljensinnä:* `neljes+A+Ord+Pl+Ess`

* **LEXICON ARABICCOMPOUNDS**  ! arabic as first part, 

* * *

<small>This (part of) documentation was generated from [src/fst/stems/numerals.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/numerals.lexc)</small>

---

# Postpositioiden vartalot

Tässä sekä postpositiot ja niiden tagi.

LEXICON post   on itse +Po -tagi

Postpositiot itse sijaitsevat leksikossa LEXICON Postposition 

Sannoi ja haamui vesta/Varenki 2012 mukkaan.

* * *

<small>This (part of) documentation was generated from [src/fst/stems/postpositions.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/postpositions.lexc)</small>

---

# Prepositiot

Adposittiit eli postposittiit ja preposittiit – esimerkkii
Aikamatka-sanalista

pr for +Pr tag

Preposition for +Pr tag

* * *

<small>This (part of) documentation was generated from [src/fst/stems/prepositions.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/prepositions.lexc)</small>

---



# Pronominien vartalot

Itse taivutus jatkuu

Persoonapronominit

* mie+Pron+Pers+Sg1:m        12pronsg       ; 
* mie+Pron+Pers+Sg1+Use/NG:m 12pronsg_short ; 
* ...
* sie+Pron+Pers+Sg2+Use/NG:s 12pronsg_short ; 

Demonstratiivipronominit

Kysymäpronominit
* kuka+Pron+Interr+Sg+Nom:kuka   K  ;  nom
* kuka+Pron+Interr+Pl+Nom+Dial/Por:kukka  K  ;  

* kuka+Pron+Interr:ke             kuka_relkys_obl  ;  

* mikä+Pron+Interr:mi             mi_rel  ;  

Relatiivipronominit

Refleksiivi- ja resiprookipronominit

Indefiniittipronominit/Kvanttoripronominit

* * *

<small>This (part of) documentation was generated from [src/fst/stems/pronouns.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/pronouns.lexc)</small>

---

# Propernoun lexicon for Kven

LEXICON ProperNoun  on kokeellinen leksikko

* Ap:Ap2 vanha_nocmp_prop_org_21C ; 
* Kap:Kap2 vanha_prop_sur_21C ; 
* Tonle-Sap:Tonle-Sap2 vanha_prop_plc_21C ; 
* Ginungagap:Ginungagap2 vanha_prop_plc_21C ; 
...

* * *

<small>This (part of) documentation was generated from [src/fst/stems/propernouns.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/propernouns.lexc)</small>

---

# Verbivartalot

Katsaus:
* Epäsäännölliset ei+V+Neg: neg ; olla: OLLA ;
* YKSITAVUISET  saađa, vieđä...
* Erikoinen yksitavuinen V1nahda, V1tehda V1kayda
* YKSIVARTALOISET v2 lähteet, lukkeet...
* v2_odd kirjoittaat
* KONSONANTTIVARTALOISET v3-tyyppit:
* v3_ele
* v3_ele_short kuula
* v3_ise aukaista :aukais
* v3_lnr tulla, mennä...
* v3piera pierä
* v3_ele_odd kävelä:kävel  ;
* v3juosta juostajuo v3juosta ;
* VOKAALIVARTALOISET v4-tyyppiset
* v4 lämmetä
* v43 evakueerata
* v43_odd_II karhiita
* v4_itte kyytitä: kyyti  ;
* v4_oitte haravoita
* kontraktiverbit jatkata:jatka v43_odd ;

# Lexicon VerbRoot 

v_v2
Now v3_ise all end on s. In order to have aukasevat, as an possible
Unexpected results: aukasseeva, aukaisseevat
Missing results: aukasevat, Unexpected results: aukasseevat

* olla: OLLA ; 
* ei+V+Neg: neg ; 
* saađa:saa v1 ; 
* vieđä:vie v1 ; 
* naiđa:nai v1iđa ;
* voiđa:voi v1iđa ; 
* uiđa:ui v1iđa ; 
...

huokata:huokka v43_odd ;
puheta:puhke v43_odd ;

* * *

<small>This (part of) documentation was generated from [src/fst/stems/verbs.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/fst/stems/verbs.lexc)</small>

---



retroflex plosive, voiceless			t`  ʈ	    0288, 648 (` = ASCII 096)
retroflex plosive, voiced			d`	ɖ		0256, 598
labiodental nasal					F 	ɱ		0271, 625
retroflex nasal						n` 	ɳ		0273, 627
palatal nasal						J 	ɲ		0272, 626
velar nasal							N 	ŋ		014B, 331
uvular nasal							N\	ɴ		0274, 628
	
bilabial trill						B\ 	ʙ		0299, 665
uvular trill							R\ 	ʀ		0280, 640
alveolar tap							4	ɾ		027E, 638
retroflex flap						r` 	ɽ		027D, 637
bilabial fricative, voiceless		p\ 	ɸ		0278, 632
bilabial fricative, voiced			B 	β		03B2, 946
dental fricative, voiceless			T 	θ		03B8, 952
dental fricative, voiced				D 	ð		00F0, 240
postalveolar fricative, voiceless	S	ʃ		0283, 643
postalveolar fricative, voiced		Z 	ʒ		0292, 658
retroflex fricative, voiceless		s` 	ʂ		0282, 642
retroflex fricative, voiced			z` 	ʐ		0290, 656
palatal fricative, voiceless			C 	ç		00E7, 231
palatal fricative, voiced			j\ 	ʝ		029D, 669
velar fricative, voiced	        	G 	ɣ		0263, 611
uvular fricative, voiceless			X	χ		03C7, 967
uvular fricative, voiced				R 	ʁ		0281, 641
pharyngeal fricative, voiceless		X\ 	ħ		0127, 295
pharyngeal fricative, voiced			?\ 	ʕ		0295, 661
glottal fricative, voiced			h\	ɦ		0266, 614

alveolar lateral fricative, vl.		K 
alveolar lateral fricative, vd.		K\

labiodental approximant				P (or v\) 
alveolar approximant					r\ 
retroflex approximant				r\` 
velar approximant					M\

retroflex lateral approximant		l` 
palatal lateral approximant			L 
velar lateral approximant			L\
Clicks

bilabial								O\	(O = capital letter) 
dental								|\
(post)alveolar						!\ 
palatoalveolar						=\ 
alveolar lateral						|\|\
Ejectives, implosives

ejective								_>	e.g. ejective p		p_>
implosive							_<	e.g. implosive b	b_<
Vowels

close back unrounded					M
close central unrounded 				1 
close central rounded				} 
lax i								I 
lax y								Y 
lax u								U

close-mid front rounded				2 
close-mid central unrounded			@\ 
close-mid central rounded			8 
close-mid back unrounded				7

schwa	ə							@

open-mid front unrounded				E 
open-mid front rounded				9
open-mid central unrounded			3 
open-mid central rounded				3\ 
open-mid back unrounded				V 
open-mid back rounded				O

ash (ae digraph)						{ 
open schwa (turned a)				6

open front rounded					& 
open back unrounded	        		A 
open back rounded					Q
Other symbols

voiceless labial-velar fricative		W 
voiced labial-palatal approx.		H 
voiceless epiglottal fricative		H\ 
voiced epiglottal fricative			<\ 
epiglottal plosive					>\

alveolo-palatal fricative, vl. 		s\ 
alveolo-palatal fricative, voiced	z\ 
alveolar lateral flap				l\ 
simultaneous S and x					x\ 
tie bar								_
Suprasegmentals

primary stress						" 
secondary stress						% 
long									: 
half-long							:\ 
extra-short							_X 
linking mark							-\
Tones and word accents

level extra high						_T 
level high							_H
level mid							_M 
level low							_L 
level extra low						_B
downstep								! 
upstep								^	(caret, circumflex)

contour, rising						 
contour, falling						_F 
contour, high rising					_H_T 
contour, low rising					_B_L 

contour, rising-falling				_R_F 
(NB Instead of being written as diacritics with _, all prosodic 
marks can alternatively be placed in a separate tier, set off 
by < >, as recommended for the next two symbols.)
global rise						<R> 
global fall						<F>
Diacritics						
									
voiceless						_0	(0 = figure), e.g. n_0
voiced							_v 
aspirated						_h 
more rounded						_O	(O = letter) 
less rounded						_c 
advanced							_+
retracted						_-
centralized						_" 
syllabic							=	(or _=) e.g. n= (or n_=) 
non-syllabic						_^ 
rhoticity						`
									
breathy voiced					_t 
creaky voiced					_k
linguolabial						_N 
labialized						_w 
palatalized						'	(or _j) e.g. t' (or t_j) 
velarized						_G 
pharyngealized					_?\
									
dental							_d 
apical							_a 
laminal							_m
nasalized						~	(or _~) e.g. A~ (or A_~) 
nasal release					_n
lateral release					_l 
no audible release				_}

velarized or pharyngealized		_e 
velarized l, alternatively		5 
raised							_r 
lowered							_o 
advanced tongue root				_A 
retracted tongue root			_q

* * *

<small>This (part of) documentation was generated from [src/phonetics/txt2ipa.xfscript](https://github.com/giellalt/lang-fkv/blob/main/src/phonetics/txt2ipa.xfscript)</small>

---



We describe here how abbreviations are in Kven Finnish are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 

* * *

<small>This (part of) documentation was generated from [src/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-fkv/blob/main/src/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---


K V E N   G R A M M A R   C H E C K E R

# DELIMITERS

# TAGS AND SETS

## Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

### Beginning and end of sentence
BOS
EOS

### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
PPUNCT
PUNCT

COMMA
¶

### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall

### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Ine
Com
Ess
Ess
Tra
Sg
Pl

Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess

Err/Orth

### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

PROP-ATTR
PROP-SUR

TIME-N-SET

###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X

## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

### Sets for Single-word sets

INITIAL

### Sets for word or not

WORD
NOT-COMMA

### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets

NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC

### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V

### Pronoun sets

### Adjectival sets and their complements

### Adverbial sets and their complements

### Sets of elements with common syntactic behaviour

### NP sets defined according to their morphosyntactic features

### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

### Postposition sets

### Border sets and their complements

Grammarchecker rules begin here 

## Grammarchecker sets

## Grammarchecker rules

### Speller rules

### Agreement rules

#### Sg1

**Agreement rule:** msyn-agr-other-sg1, *Mun puátá/puáđám*

**Agreement rule:** msyn-agr-other-sg1

#### Pl3

**Agreement rule:** msyn-agr-other-pl3, Subject to the left, *Toh puátá/puátih.*

**Agreement rule:** msyn-agr-other-pl3, Subject to the left, *Toh puátá/puátih.*

**Agreement rule:** msyn-agr-other-pl3

**Agreement rule:** msyn-agr-other-pl3

### Agreement rules

PrfPrc Pl > PrfPrc Sg 

relative sentences between the noun and the finite verb

Prs Sg3 > Prs Pl3

#### regular congruence rules

### Negation verb rules

### Postposition rules

### L2 rules

###  NP internal rules

###  Punctuation rules

###  Spacing errors

* * *
<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-fkv/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

# Disambiguator for Kven

## Sets

Sentence delimiters are the following: "<.>" "<...>" "<!>" "<?>" "<¶>"

### Part-of-Speech
* N = noun
* A = adjective
* Num = numeral
* V = verb
* Adv = adverb
* Pcle = particle
* Pr = preposition
* Po = postposition
* Pron = pronoun
* Interj = interjection

### Numerus

* Sg = Singular
* Pl = Plural
* Sg1 = Singular 1.p.
* Sg2 = Singular 2.p.
* Sg3 = Singular 3.p.
* Pl1 = Plural 1.p.
* Pl2 = Plural 2.p.
* Pl3 = Plural 3.p.

### Cases
* Nom
* Gen
* Acc
* Par
* Ine
* Ill
* Ela
* Ade
* Abe
* All
* Abl
* Ess
* Tra
* Ins
* Com
* SUBJ-CASE = Nom Par

### Types
* Prop = Proper noun
* Interr = Interrogative
* Dem = demonstrative pron
* Rel = Relative pron
Relpronpl "mikkä ja "jokka"
Relpronsg "mikä" ja "joka"
Interrpronpl "kuka" ja "mikä"
* Pers = Personal pron
* Indef = Indef pron

* Inf = Infinitive
* ConNeg = Conjugated as Negative form
* PrfPrc = Perfectum Particip
* Imprt = Imperative
* Act = Active
* Neg = Negation verb

* COMMA = comma

* Foc/kaan = focus clitic -kaan

* Sem/Fem = feminin propernoun

## Sets with more members

* WORD = all PoS

* NPMOD = these can modify a noun
* NPMODADV = NPMOD plus adverb

* NOT-NPMOD = these cannot modify a noun

* NOT-NPMODADV = these cannot modify a noun, and is not adverb

* QVANT-ADV = e.g. paljon, vähän
* KUNKA = e.g. kunka missä (adverbs that start a sentence)

Boundaries

* S-BOUNDARY = words that start a sentence

Verbs

* SV-BOUNDARY = words that start a sentence and finite verb

## Disambiguation rules

### Dialects

### Early rules

* __person_test__ selects finite verb if there is a Pron Pers to the left

* __adv_after_V__ selects adverb if there is a verb to the right

* __prop_infrontof_kieli__ removes propernoun in fron of kieli, if it kan be something else, e.g. Kainun kieli

* **PropInit** removes  propernoun in the beginning of a sentence if it kan be a CC or a Pr (e.g. Mutta)

* **PropNotInit** selects  propernoun if it is not in the beginning of a sentence

Possessive suffixes

Numeral phrases

### Preposition/postposition/adverb rules

* **Prifgenpar** selects  preposition to the left of Gen or Par

* **Poifgenpar** selects  postposition to the right of Gen or Par

* **vasthaan**

## Rules for mapping @CVP and @CNP on the CC and CS

* **CVP** maps @CVP to CS and mutta

* **CNPifN** maps @CNP to CC between two N

* **CNPifInf** maps @CNP to CC between two Inf

## Case rules

### Partitive

Genitive

### Illative

## Number rules

## More disambiguation rules
* **SgNotPl**

### Elative

## Propernouns

## Verbs

### Specific verbs	

ei negation verb

eli

## Adverbs

### paljon

### kerran

### jälkhiin

## Adjectives

Conjunctions

## Subjunctions

että

jos

ko	

sillä	

## Pronouns

## Verb rules, Verbs

### Infinitive

## Present Sg3

## Present Pl3 or Passive

Imperative

* **Pl3ollaifplrelpronandplinterrpron** selects Pl3 if olla

* **Sg3ollaifplrelpronandplinterrpron** selects Sg3 if olla

* **Sg3ollainpretandperf** selects Sg3 if COPULAS

* **Sg3ollainpretandperf** selects Sg3 if COPULAS

* **Relpronandnotintterpron** selects Rel Sg if Interr

* **Relpronandnotintterpron** selects Rel Sg if Interr

* **interrpron** selects Interr if ? in the end

* **DifferenceBetweenNiitäImprtAndNiitäDemAndPersIfSubj** selects Pron Dem Pl or Pron Pers Pl3 when finite verb to the right

* **paljonadvandnotpaljonoun** selects Adv if paljon

* **Relpronifitsanounoracommabeforeit** selects Rel Pl if N to the left

* **annaimperativeandnotannaname** removes Prop if Anna se

* **tulinounfromtuliprtsg3** selects V Sg

* **dempronandnotpronpers** selects Den if A of N to the right

* **Imperativefromconneg** selects and removes ConNeg

* **ImperativeafterNeg** removes Imprt if pronoun

* **interrel** selects Interr of Rel if CS to the right

* **+FMAINV**  to the remaining finite verbs which are not AUX    

## HNOUN MAPPING

* **@<ADVLcoor** (@<ADVL) for ADVLCASEAdv if @CNP to the left and ADVL to the left of it

* **X** maps X everywhere

* **REMOVE X** removes X whenever there is any other tag.

* WORDLEMMA = regex giving the lemma in question

* **errorth** removes Err/Orth if there is an analysis without Err/Orth with the same lemma

* * *
<small>This (part of) documentation was generated from [tools/grammarcheckers/grc-disambiguator.cg3](https://github.com/giellalt/lang-fkv/blob/main/tools/grammarcheckers/grc-disambiguator.cg3)</small># Tokeniser for fkv

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

## Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-fkv/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

# Grammar checker tokenisation for fkv

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-fkv/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

