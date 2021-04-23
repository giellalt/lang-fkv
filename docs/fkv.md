
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
 * **+Rom**
 * **+Dyn**

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
 * **+Use/-PMatch** =
 * **+Use/PMatch** =
 * **+Use/-Spell** = Excluded in speller
 * **+Use/SpellNoSugg** = recognized but not suggested in speller
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

|                        Flag | Explanation
|                        ---- | ----
 |  **@P.NeedNoun.ON@** | (Dis)allow compounds with verbs unless nominalised
 |  **@D.NeedNoun.ON@** | (Dis)allow compounds with verbs unless nominalised
 |  **@C.NeedNoun@** | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

|                        Flag | Explanation
|                        ---- | ----
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

|                        Flag | Explanation
|                        ---- | ----
 |  **@U.Cap.Obl@** | Allowing downcasing of derived names: deatnulasj.
 |  **@U.Cap.Opt@** | Allowing downcasing of derived names: deatnulasj.
 |  @C.ErrOrth@
 |  @D.ErrOrth.ON@
 |  @P.ErrOrth.ON@
 |  @R.ErrOrth.ON@
 |  **@P.Pmatch.Loc@** | Used on multi-token analyses; tell hfst-tokenise/pmatch where in the form/analysis the token should be split.
 |  **@P.Pmatch.Backtrack@** | Used on single-token analyses; tell hfst-tokenise/pmatch to backtrack by reanalysing the substrings before and after this poin in the form (to find combinations of shorter analyses that would otherwise be missed)


|                        Flag | Explanation
|                        ---- | ----
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

Acronym

Abbreviation

File containing abbreviations 

Tämä on saamenkielinen lyhennelista. Se pitää vaihtaa.
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

 * LEXICON vanha_a_33aes  sinnikäs

 * LEXICON a_32_is  valmis, kaunis

 * LEXICON a_32_kärys  kärys, so far this is the only word

 * LEXICON a_32_et  tuoret

 * LEXICON a_32_u  vaipunu:vaipun ! perfect participle

 * LEXICON a_32_väsynyt  väsyny:väsyn, so far this is the only word ! perfect participle

 * LEXICON a_32_nny  hengistynny:hengistynn

 * LEXICON a_22_excns  = veres

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
 * konkreettinen:konkreetti a_22_inen_odd ; 

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
Sannoi ja haamui listan mukkaan

Adverbiaaleja myötä?

TT: Ei. Tässä pitää olla adverbeja vaan.
Adverbiaali on syntaktinen kategoria ja saa
analyysinsa eri ohjelmassa (src/syntax/disambiguation.cg3)

 * paikala adv ;  ... on esim. substantiivi
# Closed parts of speech

Tästä tiedostosta löytyvät suljetut sanaluokat.

Particle leksikossa on vain kuusi sanaa

Subjunction -leksikossa on tärkeimmät sanat (koska, että, jos, ..)

Conjunction -leksikossa on vain pari sanaa. joko - tai

Interjection -leksikossa on vain pari sanaa.  yäk, kääk, nono
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

 LEXICON n_11_E2I         on ovi:ove, joki:joke, hyksi, suomi ! Ei lainasanat

these two lexica for cases with

the same affix in sg and pl

 * LEXICON n_11_pl          "villahousut", lyhyt vokali, yks vartalo, kasvot

 * LEXICON x_11_pl         ! Seems like no adjectives call this?

the same affix in sg and pl

 * LEXICON n_21          opettaaja, karamelli

 * LEXICON n_21_odd   kajava

 * LEXICON x_21_odd   kajava

 * LEXICON n_21_odd_C  lainasanat, fiction

 * LEXICON n_21_odd_i   meininki, tunturi TODO

 * LEXICON n_21_oi          Paivukko, perintö, kurkkio

 * LEXICON n_21_ao          Mustikka, kulkkiija, sivakka, asia (in Var) ! Loppuu a:han!!!!

 * LEXICON n_31_ee          hoppee:hoppe

 * LEXICON n_31_ii          assii (in Por) kurkkii (in Por)

* LEXICON n_31_ii          for same affix in sg and pl

* LEXICON n_31_ii          for same affix in sg and pl
* LEXICON n_31_ii          for same affix in sg and pl
* LEXICON n_31_ii          for same affix in sg and pl

 * LEXICON n_31_uu          karhuu (in Por) 

* LEXICON n_31_uu          for same affix in sg and pl

* LEXICON n_31_uu          for same affix in sg and pl

 LEXICON n_12          kieli

* LEXICON n_12          for same affix in sg and pl

* LEXICON n_12          for same affix in sg and pl

 LEXICON n_12_mi        lumi lu

 LEXICON n_12_si         vuosi, käsi, hirsi

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

 LEXICON n_22_m  elläin elläi yđin ydin

 LEXICON x_22_m 

 LEXICON n_22_m_pl 

 LEXICON n_22_s   sairhaus

* Konsonanttivartalo: poista -e ja heikko aste
* Konsonanttivartalo: poista -e ja heikko aste

* Konsonanttivartalo: poista -e ja heikko aste
* Konsonanttivartalo: poista -e ja heikko aste

 LEXICON n_32_as  rakas, asukas

 LEXICON n_32_is  ruvis, ruumis

 LEXICON n_32_et  venet, hyljet, huonet

 LEXICON n_32_ts  kirves

 LEXICON x_32_ts  kirves

these two lexica for cases with

the same affix in sg and pl -- tsekkaa long

 * LEXICON n_22_excns  = veres (keskus)

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

Basic paradigms

## Basic vowel stems

### LEXICON strong_v_stem_even   *Kaikki vahvan asteen sijamuodot tähän*

### LEXICON strong_v_stem_odd   *Kaikki vahvan asteen sijamuodot tähän*

### Sublexica for the vowel stems
# Substantiivit

 LEXICON NounRoot 

Nomenityyppit s.147 (Eira published book 2014) (Niitähän oon 3)

TYYPPI 1: Kaksitavuiset lyhykäisvokaaliset rangat

* 2.1 Kaksitavuiset ( juoppo, syksy, puku )               = `n_11`
* X.X Kaksitavuiset ( sana : sanoissa, aika )  a -> o:ksi = `n_11_AO`
* X.X Kaksitavuiset ( kuva : kuvissa )         a -> i:ksi = `n_11_A0_A2I`
* X.X Kaksitavuiset lånord ( färi : färi, pappi, tooli )  = `n_11_i`
    - 2.1.1  Kaksitavuiset monikko (housut )                 = `n_11_pl`
    - 2.1.2  Kaksitavuiset ( joki:joke, ovi:ove ) e -> i:ksi = `n_11_E2I`
* 3.1 Kaksitavuiset (CNS-rankaiset?) ( pieni, kieli )     = `n_12`
* 3.1.1  ( lumi:lunta, toimi, liemi )                     = `n_12_mi`
* 3.1.2  ( käsi, vuosi )                                  = `n_12_si`
* X.X.X  (kusi, kuusi) toistaiseksi vain nämä 2 sanaa     = `n_12_kusi`
* 3.1.3  ( lapsi )                                        = `n_12_lapsi`
* 3.1.4  ( mies )                                         = `n_12_mies`

TYYPPI 2: Usheempitavuiset lyhykäisvokaaliset rangat		

* 2.2  Usseempitav. ( opettaaja )                         = `n_21`
    - 2.2.2  U.tav. monikko oi (kulkkiija,sivakka,paijukko ) = `n_21_oi`
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
 * assii+Dial/Por:assii n_31_ii ; 
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
# Postpositioiden vartalot

Tässä sekä postpositiot ja niiden tagi.

 LEXICON post   on itse +Po -tagi

 Postpositiot itse sijaitsevat leksikossa LEXICON Postposition 

Sannoi ja haamui vesta/Varenki 2012 mukkaan.
# Prepositiot

Adposittiit eli postposittiit ja preposittiit – esimerkkii
Aikamatka-sanalista
# Pronominien morfologia

Pronominit ovat edelleen vaan kokeiluvaiheessa.

 LEXICON 12pronsg  on 1., 2. p. yksikkö

 LEXICON 12pronsg_short  on 1., 2. p. yksikkö

 LEXICON 123pronpl  

nuoitä

tuotä
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
  LEXICON ProperNoun  on kokeellinen leksikko
Punctuation marks 

Punctuation contains period, comma, parentheses, etc.
# LEXICA FOR KVEN VERB INFLECTION

# Auxiliaries

 LEXICON neg  jakaantuu kolmeen

 LEXICON indneg  negaation indikatiivipäätteet

Note that lexicon indneg directs to K_NEG and not to K,
this is since we have enkä but not enkin

 LEXICON imprtneg  negaation imperatiivipäätteet

 LEXICON OLLA  on oma leksikko, vielä vain preesens

# INCOMING

# Verbiluokat v1...

Luokkien v1, v2... Eiran kieliopin mukaan.
Tarvitaan luultavasti alaluokkia.

Jokaisessa leksikossa on infinitiivi, kolmannen
persoonan pääteet, ja viittaus preesensin ja preteritin
kautta leksikkoon **v12pers**, missä *-n, -t, -mA, -ttA*

 LEXICON v1  saađa:saa

 LEXICON v1kayda   käyđä:kä

 LEXICON v1nahda  nähđä:nä

 LEXICON v1tehda  tehđä:te

 LEXICON v2  ! aikkoot:aiko, anttaat:anta, assuut:asu, kattoot:katt2o, kulkkeet:kulke, lähteet:lähte, lenttäät:lentä, lukkeet:luke, luottaat:luotta, näkkyyt:näky, pittäät:pitä, soppiit:sopi (tämä ei ole yaml)

 LEXICON v2_tiettäät  tiettäät

 LEXICON v2_odd  kirjoittaat:kirjoitta

 LEXICON v3_ele  ajatella:ajattel

 LEXICON v3_ele_odd  kävelä:kävel

* aukaista > aukaisemma
* täristä > tärisemä

 LEXICON v3_ise  aukaista:aukaise

 LEXICON v3_aise  aukaista:aukaise

 LEXICON v3_lnr  ja vartalo on pan-
* pitää tehdä ^D
* Lyhyt partisiippi
* Lyhyt partisiippi
* Lyhyt partisiippi

 LEXICON v3_s  ja vartalo on pan-
* pitää tehdä ^D
* Lyhyt partisiippi
* Lyhyt partisiippi
* Lyhyt partisiippi

 LEXICON v3piera  pierä:pie
* pitää tehdä ^D
* Lyhyt partisiippi
* Lyhyt partisiippi

 LEXICON v3juosta  juosta:juo

 LEXICON v4  vanheta:vanhe, pajeta:pake

 LEXICON v4_itte  ja vartalo on - kyyti
* Lyhyt partisiippi
* Lyhyt partisiippi
* Lyhyt partisiippi
+V+Act+PrfPrc:tte%>nnhee PRFPRC_OBL ;

 LEXICON v4_oitte  ja vartalo on haravoi-
* Lyhyt partisiippi
* Lyhyt partisiippi
+V+PrfPrc:tte%>nnhee PRFPRC_OBL ;

 LEXICON v43  hantteerata:hantteera

 LEXICON v43_odd  jatkata:jatka

 LEXICON v43_odd_II  jatkata:jatka

## Verbien persoonapäätteet

Tämä osa antaa personapäätteet.
1. ja 2. persoona erikseen, koska ne ovat samoja
preesensissä ja preterissä.
3. persoona annettiin jo vartaloleksikoissa.

 LEXICON v12pers  Only sg12, pl12 so far

 LEXICON PRFPRC_OBL  is without nom sg
# Verbivartalot

Katsaus:
* Epäsäännölliset ei+V+Neg: neg ; olla: OLLA ;
* YKSITAVUISET v1 saađa, vieđä...
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






# Phonological rules for Kven
## Alphabet

 * a b c d đ ð e f g h i j k l m n o p q         
 * r s t u ü v w x y z å ä ö æ ø š             
 * A B C D Đ Ð E F G H I J K L M N O P           
 * R S T U V W X Y Z Å Ä Ö Æ Ø Š               
 * %^A:ä %^O:ö %^U:y                 archi vowels for harmony
 * %^V %^N:n                         vowel copy sanoo, LNR copy purra
 * **i2:i** = plural i of nouns
 * **i3:i** = past tense i of verbs
 * **i4:i** = i in conditional isi of most verbs (without gemination)
 * **i5:i** = superlative i of adjectives
 * **i6:i** = i:j in poika:pojan
 * **i7:i** = i in conditional of contract verbs (with gemination)
 * p2:p t2:t k2:k             p2, k2, t2 = always p, t, k ; eli ei tule astevaihtelua
 * k3:k                       k3 never k:v, contrary to k
 * %^HMETA:0                  h metateesi sykshyyn
 * %^WG:0                     weak grade hatun
 * %^TJ:0 vuote vuoje
 * %^T0:0 tytär tyär tytärtä tyärtä in Var
 * %^UU:0 vuote vuue
 * %^E2I:0                    e to i in nom ove : ovi
 * %^A2I:0                    a to i in opettajine (Var)
 * %^VDEL:0 %^EDEL:0          -- DEL = deletion
 * %^AE:0                     -- a to e lauletaan, soma somempi
 * %^AO:0                     -- a to o sanoissa
 * %^A0:0                     -- a to 0
 * %^I0:0                     -- i to 0 in vanha_x_21 -Por with i endings: tooline
 * %^E0:0 e to 0 in vanha_a_32 and vanha_n_32 bc we add b4 dial trigger, for twolc struc.
 * %^Por:0                    -f- Porsanger  dialekti
 * %^Var:0                    -- Varanger   dialekti
 * %^Jok:0                    -- Jokivarret dialekti
 * %^End:0                    -- End of word, since the # tags don't work properly

 *  »   = Derivational suffix
 * %>   = border before inflection suffix
The hash mark = Word boundary for both lexicalised and dynamic compounds
 *  %^  = (exceptional) soft hyphenation point 

## Sets
 * FrontVow = e i i2 i3 i4 i5 i6 i7 y ä ö ü æ ø ;            
 * BackVow = a o u å ;                                       
 * ArchiVow =  %^A %^O %^U ;                                 
 * UnroundedVow = e ä a i i2 i3 i4 i5 i6 i7 ;                
 * RoundedVow = y ö u o ;                                    
 * SomeVow = %^V ;                                           
 * NeutralVow = e i i2 i3 i4 i5 i6 i7 ;                      
 * Vow   = FrontVow BackVow ArchiVow SomeVow ;       
 * NotE    =   i i2 i3 i4 i5 i6 i7 y ä ö ü æ ø a o u å ;       
 * NotEY   =   i i2 i3 i4 i5 i6 i7   ä ö   æ ø a o u å ;       
 * NotEYU  =   i i2 i3 i4 i5 i6 i7   ä ö   æ ø a o   å ;       
 * NotOU   = e i i2 i3 i4 i5 i6 i7 y ä ö ü æ ø a ;             
 * NotOUI  = e                     y ä ö ü æ ø a ;             
 * NotOUIY = e                       ä ö   æ ø a ;             
 * NotAEI  =                       y ä ö ü æ ø   o u å ;       
 * NotOUIF =                      y ä ö ü æ ø   ;               and e? (removed 29.1.)
 * NotOUIB =                                  a ;               and e? (removed 29.1.)
 * NotEYUF =   i i2 i3 i4 i5 i6 i7   ä ö   æ ø         ;       
 * NotEYUB =   i i2 i3 i4 i5 i6 i7             a o   å ;       
 * ArchiCns = %^N ;                                            
 * SurfaceCns = b c d đ f g h j k l m n p q r s š t v w x z ;  
 * Cns = SurfaceCns ArchiCns p2 t2 k2 ;                        
 * Segment = Vow Cns ;                                       
 * Dummy = %^WG %^T0 %^TJ %^UU %^E2I %^A2I %^HMETA %^VDEL %^EDEL %^AE %^AO %^¤ %^I0 %^E0 %^A0 %^Por %^Var %^Jok ;  
 * DummyBorder = Dummy %> ;          
 * Dial =  %^Por %^Var %^Jok ;  
 * NonFront = BackVow ArchiVow ArchiCns SomeVow Cns NeutralVow Dummy %> ;  

Trigger order (to be completed)
```
stem  Dial:  WG  [T0|TJ]  [E0|I0|E2I|A2I|AO|AE|VDEL|UU]  HMETA  >  [i2:|i3:|i4:](i5:)  >  suffixes
```

# Rules (Divided into consonant and vowel rules)

# Consonant rules

## Gemination

Pitkän vokaalin jälkeen ja kans painottoman tavun jälkeen k, t, p ja s geminoituvat
ko perässä on pitkä vokaali (= lounaismurteitten erikoisgeminaatio),
mutta muut konsonantit geminoituvat vaan lyhyen painollisen tavun jälkeen
(= yleisgeminaatio). (ES).

**Gemination 0:h**

**Gemination 0:j**

**Gemination 0:k**

* **flak0u>i2>n**
* **flakku>i>n**
* **flaku>i2>n^A**
* **flaku>i>na**
* **urk0u>i2**
* **urkku>i**

**Gemination 0:l**

**Gemination 0:m**

**Gemination 0:n**

**Gemination 0:p**

**Gemination 0:r**

**Gemination 0:s**

**Gemination 0:t**

**Gemination 0:v**

## Gradation

### Gradation p

**Gradation p:0 (pp:p)**

**Gradation p:v**

**Gradation mp:mm**

* **kilpe^WG>n**
* **kilve0>n**

* **ranka^WG>n**
* **ranga0>n**

* **napa^WG>n**
* **nava0>n**

* **taipal^WG**
* **taival0**

* **varpa^WG**
* **varva0**

* **halpa^WG**
* **halva0**

* **turpe^WGt**
* **turve0t**

### Gradation k

**Gradation i6:0, in word poika: pojan**

* **poi6ka^WG>n**
* **po0ja0>n**

* **poi6ka^WG^A0>i2>le**
* **po0j000>i>le**

TODO: When k:j and when k:0 between e and i.

**Gradation k:j**

**Gradation k:0**

* **halke^WG%>t^A**
* **halje0>ta**

* **mäke^WG>n**
* **mäje0>n**
* **aika^Por^WG>n**
* **aija00>n**
* **jälke^WG>n**
* **jälje0>n**
* **luke^WG>n**
* **luje0>n**

* **pölkä^WG>t^A**
* **pöl0ä0>tä**
* **tuhka^WG>t**
* **tuh0a0>t**
* **maka^WG>t^A**
* **ma0a0>ta**
* **kyke^WG>t^A**
* **ky0e0>tä**
* **sarka^WG>n**
* **sar0a0>n**
* **parku^WG>n**
* **par0u0>n**

**Gradation k3:0**

* **huok3a^WG>t^A**
* **huo0a0>ta**

**Gradation k:v**

* **ruoka^WG>n**
* **ruova0>n**

* **puku^WG>n**
* **puvu0>n**

* **koko^WG>t^A**
* **kovo0>ta**

**Gradation nk:ng**

* **sivakka^AO>i2>ne**
* **sivak0o0>i>ne**

### Gradation t

**Gradation Nt:NN in first syllable after short vowel**

**Gradation t:0 for tt:t, Nt:N and vuote:vuoeksi**

* **katto^WG>n**
* **kat0o0>n**
* **katt2o^WG>n**
* **katto0>n**

**ti:si**

* **vete^E2I**
* **vesi0**

* **hirte^HMETA>hii**
* **hirs00>hii**

**t:j in Var variant vuojeksi**

**o:u in vuosi vuote vuoet -> vuuet optional variant**

```
* **pe#rintö^WG>n**
* **pe#rinnö0>n**
```

* **lentä^WG>n**
* **lennä0>n**

* **kiertä^WG>n**
* **kier0ä0>n**

* **ymmärtä^WG>n**
* **ymmär0ä0>n**

* **alta^WG>s**
* **alla0>s**

**Gradation t:đ**

* **pitä^WG^AO>i3>n**
* **piđ000>i>n**

* **lahta^WG>i3>n**
* **lahđ00>i>n**
* **lahte^WG>n**
* **lahđe0>n**
* **huutel^WG>^A**
* **huuđel0>a**

## Assimilation

**Alveolar assimilation for consonant stem l**
* **tul>^N^U**
* **tul>lu**

**Alveolar assimilation for consonant stem r**

**Alveolar assimilation for consonant stem s**

**j:0 in front of i**

# Vow rules

## Vow harmony

Thefa idea of having f.ex V:e, always to a specific vowel, is to not have conflicts in
twolc compilation. This improves compilation time (we assume) and it make Twolc
behave more predictable. Weird things happen sometimes with conflicts!
The downside is that often you have linguistic rules for vowels that are similar
for a group of vowels! This is most of case. And now you have to edit it for all
vowel separately one by one. Hopefully, we can make sure we don't forget to do it
too often, by having more user feedback, especially from the paradigms in the dictionary.

###  For each Vowel separately

**^V:e**

* **lapse^HMETA>h^V^Vn**
* **laps00>heen**
* **lume^HMETA>h^V^Vn**
* **lum00>heen**
* **mieh^HMETA>h^V^Vn**
* **mieh0>heen**

**^V:a**

* **maa>h^Vn**
* **maa>han**

**^V:i**

* **poi6ka^AO^HMETA%>h^V%>i2**
* **poik000>hi>i**
* **kuva^AO^HMETA%>h^V%>i2**
* **kuv000>hi>i**

**^V:o**

###  (the old system) with variables (Vx/Vy) instead of each vowel separately

**Back harmony for %^A: %^O: %^U:**

* **kulke>^A**
* **kulke>a**

## Vow copying and metathesis

**Vow copying in short h-illative and short partitive sg**

* **heinä>^V**
* **heinä>ä**
* **syksy>^V**
* **syksy>y**

**Vow copying in partitive of words ending in io, ia**

**Vow copying in long h sg forms both part one and part two**

**Vow copying in long h pl forms**

* **sivakka^AO^HMETA>h^V>i2n**
* **sivakk000>ho>in**

**a to o and metathesis in h forms in pl of a-stems**

* **paivukko>^V**
* **paivukko>o**

**Stem deletion in h-illative**

* **syksy^HMETA>h^V^Vn**
* **syks00>hyyn**

## Stem alternation rules

## e rules

__e:i in nom.sg. of e-stems and in n_23ia kauhia hopia in Var__

* **ove^E2I**
* **ovi0**

* **kauhe^E2I^¤>^A**
* **kauhi00>a**

**e:0 in consonant stems and illative plural**

* **tyvene^Por^WG>n**
* **tyvene00>n**

* **kiele>ten**
* **kiel0>ten**

* **ytime^HMETA>h^V^V>**
* **ytim00>hee>**

* **elläime^HMETA>h^V^V>**
* **elläim00>hee>**

* **aukaise>i3**
* **aukais0>i**

* **vuote^HMETA>hii**
* **vuos00>hii**

Cns:0 in hoppe- hope-a in Var @RULENAME@ Jok

## i rules
The -i- rules require different i-s for different POS.

**i:0**

## a rules

**a:0 before Pret and Pl i when rounded root vowel**

* **varma^HMETA>h^V^Vn**
* **varm00>haan**

* **rakkaa^VDEL^WG>s**
* **rak0a000>s**

* **otta^WG>i3n**
* **ot000>in**

* **loistaava^WG>i2>ss^A**
* **loistaav00>i>ssa**

**a:o before Pl i and Pret i**

* **matka^Por^AO>i2**
* **matko00>i**

* **kala^WG^AO>i2>tten**
* **kalo00>i>tten**

* **kaula^WG^AO>i2>tten**
* **kaulo00>i>tten**

* **sivakka^WG^AO>i2>tten**
* **sivak0o00>i>tten**

* **kulkkiija^AO>i2>tten**
* **kulkkiijo0>i>tten**

**ä:ö before Pl i**

**a:i in 3-syll stems with long a and i**

* ***kuva^A2I>i2** (is not standard language)
* ***kuva0>i** (is not standard language)
* **kuv0a^A2I>i2**
* **kuvvi0>i**

* **opettaaja^WG>i2>ss^A**
* **opettaaji0>i>ssa**

* **opettaja^WG^A2I>ss^A**
* **opettaji00>ssa**

* **opettaaja^WG>i2>tten**
* **opettaaji0>i>tten**

* **opettaaja>i2>t^A**
* **opettaaji>i>ta**

* **opettaaja>i2**
* **opettaaji>i**

* **opettaaja^HMETA>hiin**
* **opettaaj00>hiin**

* **opettaaja>i2>n^A**
* **opettaaji>i>na**

* **opettaaja>i2>ne**
* **opettaaji>i>ne**

* ***opettaaja>i2>ne** (is not standard language)
* ***opettaaja>i>ne** (is not standard language)

* **opettaja^WG^A2I>tten**
* **opettaji00>tten**
* **opettaja^A2I>^A**
* **opettaji0>a**

* **opettaja^HMETA>hiin**
* **opettaj00>hiin**
* **opettaja^A2I>n^A**
* **opettaji0>na**

* ***opettaja^A2I>n^A** (is not standard language)
* ***opettaja0>na** (is not standard language)

**a:i in 3-syll stems with long a and i**

### Shortening

**Shortening of long vowel in front of i**

# Other Vowel rules (two A:e rules and one ä:0)

**a:e in comparative**

* ***loistaava>mpi** (is not standard language)
* ***loistaave>mpi** (is not standard language)

* **loistaava>mpi**
* **loistaava>mpi**

* ***vahva>mpi** (is not standard language)
* ***vahva>mpi** (is not standard language)

* **vahva>mpi**
* **vahve>mpi**

**a:e in passives**

**ä:0**

* **kehä>i2>ss^A**
* **keh0>i>ssä**

* **päivä>i2>in**
* **päiv0>i>in**

* **jyv0ä>i2>in**
* **jyvv0>i>in**

* ***kehä>i2>ss^A** (is not standard language)
* ***kehä>i>ssä** (is not standard language)

* **pää>i2>ss^A**
* **p0ä>i>ssä**

**ö:0**

## Gemination tests

* ***kuv0a^A0>i2>n^A** (is not standard language)
* ***kuvvi0>i>na** (is not standard language)
* ***poi6ka^A0>i2>n^A** (is not standard language)
* ***poiki0>i>na** (is not standard language)

* ***poi6ka^A2I>i2>n** (is not standard language)
* ***poika0>i>n** (is not standard language)
* ***poi6ka^A2I>i2** (is not standard language)
* ***poika0>i** (is not standard language)

* **aika^Por^AO>i2>n^A**
* **aiko00>i>na**
* **aika^Por^AO>i2>ne**
* **aiko00>i>ne**

* **kuv0a^Por^A2I>i2>n**
* **kuvvi00>i>n**
* **kuv0a^Por^A2I>i2**
* **kuvvi00>i**

* **kuva^Por^A0>i2>ne**
* **kuv000>i>ne**
* ***kuv0a^Por^A0>i2>ne** (is not standard language)
* ***kuvvi00>i>ne** (is not standard language)
* ***kuva^Por^A0>i2>ne** (is not standard language)
* ***kuva00>i>ne** (is not standard language)

* **poi6ka^Por^A0>i2>ne**
* **poik000>i>ne**
* ***poi6ka^Por^A0>i2>ne** (is not standard language)
* ***poika00>i>ne** (is not standard language)
* ***poi6ka^Por^A0>i2>ne** (is not standard language)
* ***poiki00>i>ne** (is not standard language)

* ***poi6ka^A2I>i2>n** (is not standard language)
* ***poika0>i>n** (is not standard language)

* **sop0i>^V**
* **soppi>i**

* **vuot0e>i2>^V>n**
* **vuoss0>i>i>n**

* ***vuot0e>i2>^V>n** (is not standard language)
* ***vuott0>i>i>n** (is not standard language)

* **housu>i2>le**
* **housu>i>le**

* **hirt0e>i2>^V**
* **hirss0>i>i**

* ***hirt0e>i2>^V** (is not standard language)
* ***hirtt0>i>i** (is not standard language)

* **ant0a>^Vt**
* **antta>at**

* **ant0a>^V**
* **antta>a**

* **ant0a>^V>v^A**
* **antta>a>va**

* **ant0a>^V>v^At**
* **antta>a>vat**

* **aik0a^Por>^V**
* **aikka0>a**

* **kiv0e>i2>^V**
* **kivv0>i>i**

* **kal0a>^V**
* **kalla>a**
* **kuv0a>^V**
* **kuvva>a**

* **suome>^V**
* **suome>e**

* **lauk0e>^V**
* **laukke>e**

* **tek0e>^V**
* **tekke>e**

* **kat0o>^V>t**
* **katto>o>t**

* **kal0a^Por^AO>i2**
* **kallo00>i**

* **kir0o>^V>t**
* **kirro>o>t**

* **san0a^AO>i2**
* **sanno0>i**

* **jout0u>^V**
* **jouttu>u**

* **puh0u>^V**
* **puhhu>u**

* **näk0y>^V**
* **näkky>y**

* **lev0y>^V**
* **levvy>y**

* **näk0ö>^V**
* **näkkö>ö**

* **pör0ö>^V**
* **pörrö>ö**

* ***perin0ö^WG>n** (is not standard language)
* ***perinnö0>n** (is not standard language)

* **tiet0ä>^Vt**
* **tiettä>ät**

* **as0u>^Vt**
* **assu>ut**

* **el0ä>^V**
* **ellä>ä**

* **jalk0a>^V**
* **jalkka>a**

* **järk0e>^V**
* **järkke>e**

* **murt0o>^V**
* **murtto>o**

* **polk0u>^V**
* **polkku>u**

* **särk0y>^V**
* **särkky>y**

* **lämp0ö>^V**
* **lämppö>ö**

* **pölk0ä>^V**
* **pölkkä>ä**

* **härk0ä>^V**
* **härkkä>ä**

* **kerk0i>^Vn**
* **kerkki>in**

* **lauk0e>i7s**
* **laukke>is**

* **särk0y>i7s**
* **särkky>is**

**ö:0**

**ö:0**

**ö:0**
# Start making a syntactic disambiguator

## Sets

Sentence delimiters are the following: "<.>" "<...>" "<!>" "<?>" "<¶>"

### Part-of-Speech
* N = noun
* A = adjective
* Num = numeral
* V = verb
* CC = conjunction
* CS = subjunction
* Adv = adverb
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
* @CVP = Conjunction or subjunction that conjoins finite verb phrases.
* @CNP = Local conjunction or subjunction.

## Sets with more members

* WORD = all PoS

* NPMOD = these can modify a noun
* NPMODADV = NPMOD plus adverb

* NOT-NPMOD = these cannot modify a noun

* NOT-NPMODADV = these cannot modify a noun, and is not adverb

* QVANT-ADV = e.g. paljon, vähän
* KUNKA = e.g. kunka missä (adverbs that start a sentence)

* S-BOUNDARY = words that start a sentence

* VFIN = finite verb

* COPULAS = olla

* MOD-ASP = auxilaries

* AUX-OR-MAIN = verbs which can be both auxilary and mainverb

* AUX = verbs which can be auxilary

* SV-BOUNDARY = words that start a sentence and finite verb

## Disambiguation rules

### Early rules

* __person_test__ selects finite verb if there is a Pron Pers to the left

* __adv_after_V__ selects adverb if there is a verb to the right

* __prop_infrontof_kieli__ removes propernoun in fron of kieli, if it kan be something else, e.g. Kainun kieli

* **PropInit** removes  propernoun in the beginning of a sentence if it kan be a CC or a Pr (e.g. Mutta)

* **PropNotInit** selects  propernoun if it is not in the beginning of a sentence

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

## Adverbs

Conjunctions

## Subjunctions

## Pronouns

## Verb rules

### Infinitive

## Present Sg3

## Present Pl3

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

* WORDLEMMA = regex giving the lemma in question

* **errorth** removes Err/Orth if there is an analysis without Err/Orth with the same lemma
