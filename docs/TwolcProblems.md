Here we document twolc problems

#  n_21

##  Pl Ess
```
kuva^AO>i2>n^A
kuvina

Today: also kuvvaina
```

Problem: twolc gives both:

##  Pl Gen

n_21 is inconsistent:

```
     tooli+N+Pl+Gen: [tooliin, tooliitten]
     pappi+N+Pl+Gen: [pappiin, papitten]
```

But:

* tooli n_21 ;
* pappi n_21 ;

tooli has -ii-, but pappi has -i-.

So: No twolc work before this is sorted out.

pappi^AO>i2>tte>n>

meininki n_22oddi

n_22oddi: has WG for Pl Gen

```
^WG%>i2
[29/57][PASS] meininki+N+Pl+Gen => meiningiitten
```

n_21 does not have WG (cf. pappi above).
But still, yaml wants WG. Check this. If it is correct, 
we need either a new class or a new stem.

```
[ 1/57][PASS] aika+N+Pl+Gen => aikkoin
[ 1/57][FAIL] aika+N+Pl+Gen => Missing results: aijoitten, aioitten
[ 1/57][FAIL] aika+N+Pl+Gen => Unexpected results: aikkoitten
```

#  n_31si

hirsi:hirte n_31si ; 

Gemination in front of long vowel does not work:

```
[ 6/57][FAIL] hirsi+N+Pl+Gen => Missing results: hirssiin
[ 6/57][FAIL] hirsi+N+Pl+Gen => Unexpected results: hirsiin
```

#  n_21ie

```
[13/57][FAIL] joki+N+Pl+Gen => Missing results: jokkiin
[13/57][FAIL] joki+N+Pl+Gen => Unexpected results: jokiin, jokkeiin
```

Gemination does not work.

# Consonan gradation

parku:parvun or parku:parun?

Test says parvun, but we have parkua : parun.
