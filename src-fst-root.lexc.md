
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
* **+Use/TTS** – **only** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+Use/-TTS** – **never** retained in the HFST Text-To-Speech disambiguation tokeniser

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
* @U.Cap.Obl@ ProperNoun ;
* @U.Cap.Opt@ ProperNoun ;
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

