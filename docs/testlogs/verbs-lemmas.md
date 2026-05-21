# Lemma-tests for *verbs* in `verbs.lexc`


**tempata** failures:

* `tempata+V+Inf` does not generate!
	tempata has no analyses either

**liuota** failures:

* `liuota+V+Inf` => ['liuvota', 0.0]
	liuota has no analyses either

**livota** failures:

* `livota+V+Inf` => ['lijota', 0.0]
* `livota` has following analyses:
  * livottaat+V+TV+Act+Imprt+Sg2
  * livottaat+V+TV+Act+Ind+Prs+ConNeg

**puheta** failures:

* `puheta+V+Inf` => ['puhjeta', 0.0]
	puheta has no analyses either

**siitä** failures:

* `siitä+V+Inf` => ['sijitä', 0.0]
* `siitä` has following analyses:
  * siittäät+V+TV+Act+Ind+Prs+ConNeg
  * se+Pron+Dem+Sg+Ela
  * siittäät+V+TV+Act+Imprt+Sg2
  * siitä+Adv
  * se+Pron+Pers+Sg3+Ela

**hylätä** failures:

* `hylätä+V+Inf` => ['hyljätä', 0.0]
	hylätä has no analyses either

**ei** failures:

* `ei+V+Inf` does not generate!
* `ei` has following analyses:
  * ei+V+Neg+Act+Pl3
  * ei+V+Neg+Act+Sg3

**silmästä** failures:

* `silmästä+V+Inf` => ['silmäistä', 0.0]
* `silmästä` has following analyses:
  * silmä+N+Sg+Ela
## Lemma statistics:
* 3202 lemmas
* 99.68769519050593 % success
## Settings used:

```json
{'analyser': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../../analyser-gt-norm.hfstol', 'generator': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../../generator-gt-norm.hfstol', 'nouns': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/nouns.lexc', 'lemmatags': ['+N+Sg+Nom', '+N+Pl+Nom'], 'exclusions': ['(CmpN/Only|ShCmp|RCmpnd|\\+V\\+|n_11_AO_pl)']}, 'adjectives': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/adjectives.lexc', 'lemmatags': ['+A+Sg+Nom']}, 'propernouns': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/propernouns.lexc', 'lemmatags': ['+N+Prop+Sg+Nom']}, 'verbs': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/verbs.lexc', 'lemmatags': ['+V+Inf']}}
```
