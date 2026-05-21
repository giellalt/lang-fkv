# Lemma-tests for *nouns* in `nouns.lexc`


**piäs** failures:

* `piäs+N+Sg+Nom` => ['piđäs', 0.0]
* `piäs+N+Pl+Nom` => ['pithäät', 0.0]
	piäs has no analyses either

**varrais** failures:

* `varrais+N+Sg+Nom` => ['varas', 0.0]
* `varrais+N+Pl+Nom` => ['varkhaat', 0.0]
* `varrais` has following analyses:
  * varata+V+Act+Cond+Sg3
  * varata+V+Act+Cond+ConNeg
## Lemma statistics:
* 10967 lemmas
* 99.98176347223489 % success
## Settings used:

```json
{'analyser': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../../analyser-gt-norm.hfstol', 'generator': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../../generator-gt-norm.hfstol', 'nouns': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/nouns.lexc', 'lemmatags': ['+N+Sg+Nom', '+N+Pl+Nom'], 'exclusions': ['(CmpN/Only|ShCmp|RCmpnd|\\+V\\+|n_11_AO_pl)']}, 'adjectives': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/adjectives.lexc', 'lemmatags': ['+A+Sg+Nom']}, 'propernouns': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/propernouns.lexc', 'lemmatags': ['+N+Prop+Sg+Nom']}, 'verbs': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/verbs.lexc', 'lemmatags': ['+V+Inf']}}
```
