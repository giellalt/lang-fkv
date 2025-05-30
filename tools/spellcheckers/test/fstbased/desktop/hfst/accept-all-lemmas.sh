#!/bin/bash
# tools/spellcheckers/test/fstbased/desktop/hfst/accept-all-lemmas.sh.  Generated from accept-all-lemmas.sh.in by configure.

# Automake interprets the exit status as follows:
# - an exit status of 0 will denote a success
# - an exit status of 77 a skipped test
# - an exit status of 99 a hard error
# - any other exit status will denote a failure.

# To run this test script only, do:
#
# make check TESTS=accept-all-lemmas.sh

# This test script will test that all lemmas are accepted by the speller

###### Variables: #######
GIELLA_LANG=fkv
### in ###
source_files=/Users/tobiaskvalness/langs/lang-fkv/src/fst/morphology/stems/*.lexc
speller_dir=/Users/tobiaskvalness/langs/lang-fkv/tools/spellcheckers/test/fstbased/desktop/hfst/../../../../
exclusions="(CmpN/Only|ShCmp|\+Cmp/SplitR| Rreal | R | Rnoun |\+V\+|NOT-TO-LEMMATEST)"

##### Extract lemmas - add additional egrep pattern as parameters: #####
##### --include "(pattern1|pattern2|...)"                          #####
##### --exclude "(pattern1|pattern2|...)"                          #####
/Users/tobiaskvalness/langs/lang-fkv/./../giella-core/scripts/accept-all-lemmas.sh "$speller_dir/$GIELLA_LANG.zhfst" \
    "$exclusions" \
    "$source_files"

rv=$?
if test $rv = 77 ; then
    echo skipped
    exit 77
elif test $rv -ge 1 ; then
    echo failed
    exit 1
fi
