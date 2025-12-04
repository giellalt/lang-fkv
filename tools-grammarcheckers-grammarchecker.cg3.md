
#      K V E N   G R A M M A R   C H E C K E R

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
Gen
Ill
Ine
Ela
All
Ade
Abl
Com
Ess
Ess
Tra
Abe
Sg
Pl

Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen

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

ISO: Sekä adverbina että adpositiona käytettäviä sanoja:
edellä, edelle, edeltä; edessä, eteen, edestä ; sisällä, sisälle, sisältä; sisässä, sisään, sisästä ; lähellä, lähelle, läheltä ; keskellä, keskelle, keskeltä ; ympärillä, ympärille, ympäriltä ; ohessa, oheen, ohesta ; takana, taakse, takaa ; alla, alle, alta ; yllä, ylle, yltä ; vailla, vaille ; vastassa, vastaan ; mukana, mukaan ; alitse, ylitse, ohitse ; ali, yli, läpi, ohi, ympäri, kohti, vastapäätä ; lisäksi, ilman, kesken, ennen

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
@NO CODE@
@NO CODE@
@NO CODE@
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@NO CODE@
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

## Grammarchecker sets

# Grammarchecker rules 

## Speller rules

## Agreement rules

### Should be Sg1

**Agreement rule:** msyn-agr-other-sg1, *Mun puátá/puáđám* ("other" is dangerous. Check!)

**Agreement rule:** msyn-agr-other-sg1

### Should be Sg2

**Agreement rule:** msyn-agr-sg3-sg2

### Should be Sg3

relative sentences between the noun and the finite verb

### Should be Pl1

**Agreement rule:** msyn-agr-sg3-pl3)

### Should be Pl2
Not written, perhaps irrelevant.

### Should be Pl3

**Agreement rule:** msyn-agr-sg3-pl3)

**Agreement rule:** msyn-agr-other-pl3, Subject to the left, *Toh puátá/puátih.*

**Agreement rule:** msyn-agr-other-pl3, Subject to the left, *Toh puátá/puátih.*

**Agreement rule:** msyn-agr-other-pl3

**Agreement rule:** msyn-agr-other-pl3

### Agreement sg -> pl

Prs Sg3 > Prs Pl3

### Negation verb rules

## Postposition rules

##  NP internal rules

The method is: Add &SUGGEST to a copied reading to *generate* a
suggestion form from that reading. The copy should contain the error
tag too – &-prefixed error tags are ignored when generating, but
used to create human-readable messages.

##  Punctuation rules

### Punctuation marks

###  Spacing errors

Here we find spacing rules.

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-fkv/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>
