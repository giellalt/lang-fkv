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
