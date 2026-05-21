# Lemma-tests for *adjectives* in `adjectives.lexc`


**pikku** failures:

* `pikku+A+Sg+Nom` does not generate!
* `pikku` has following analyses:
  * pikku+A+Attr

**ensi** failures:

* `ensi+A+Sg+Nom` does not generate!
* `ensi` has following analyses:
  * ensi+A+Attr

**viimi** failures:

* `viimi+A+Sg+Nom` does not generate!
* `viimi` has following analyses:
  * viimi+A+Attr
  * viimi+Adv

**irti** failures:

* `irti+A+Sg+Nom` does not generate!
* `irti` has following analyses:
  * irti+A+Attr

**eri** failures:

* `eri+A+Sg+Nom` does not generate!
* `eri` has following analyses:
  * Eri+N+Prop+Sem/Plc+Sg+Nom
  * eri+A+Attr
  * Eri+N+Prop+Sem/Plc+Pl+Par
  * eri+Pcle
## Lemma statistics:
* 2223 lemmas
* 99.55015744489428 % success
## Settings used:

```json
{'analyser': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../../analyser-gt-norm.hfstol', 'generator': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../../generator-gt-norm.hfstol', 'nouns': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/nouns.lexc', 'lemmatags': ['+N+Sg+Nom', '+N+Pl+Nom'], 'exclusions': ['(CmpN/Only|ShCmp|RCmpnd|\\+V\\+|n_11_AO_pl)']}, 'adjectives': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/adjectives.lexc', 'lemmatags': ['+A+Sg+Nom']}, 'propernouns': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/propernouns.lexc', 'lemmatags': ['+N+Prop+Sg+Nom']}, 'verbs': {'lexcfile': '/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/test/../stems/verbs.lexc', 'lemmatags': ['+V+Inf']}}
```
