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
* SurfaceCns = b c d đ f g h j k l m n p q r s š t v w x z ;
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

