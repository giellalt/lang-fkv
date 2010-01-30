# This is a makefile that builds the Kven morphological parser
# ************************************************************

XFST = xfst
LEXC = lexc
TWOLC = twolc

LEX = fkv-lex.txt adj-fkv-lex.txt \
	adv-fkv-lex.txt noun-fkv-lex.txt noun-fkv-morph.txt \
	verb-fkv-lex.txt verb-fkv-morph.txt \
	closed-fkv-lex.txt pp-fkv-lex.txt propernoun-fkv-lex.txt \
	abbr-fkv-lex.txt


# The ultimate goal is to build ifkv.fst, the generator
# This goal depends on fkv.save being up to date.

ifkv.fst: ../bin/ifkv.fst
../bin/ifkv.fst: ../bin/fkv.fst ../bin/fkv.save ../bin/tok.fst \
	../bin/allcaps.fst
	@echo
	@echo "*** Building the inverse ifkv.fst ***"
	@echo
	@printf "load ../bin/fkv.save \n\
	invert net \n\
	save stack ../bin/ifkv.fst \n\
	quit \n" > /tmp/ifkv-fst-script
	$(XFST) < /tmp/ifkv-fst-script
	@rm -f /tmp/ifkv-fst-script

 
# The first goal is to build fkv.fst, the analyzer.
# This goal depends on fkv.save and caseconv.fst being up to date

fkv.fst: ../bin/fkv.fst
../bin/fkv.fst: ../bin/fkv.save ../bin/caseconv.fst ../bin/allcaps.fst \
	../bin/tok.fst
	@echo
	@echo "*** Building fkv.fst ***" ;
	@echo
	@printf "read regex @\"../bin/fkv.save\" .o. \
	@\"../bin/caseconv.fst\" ; \n\
	save stack ../bin/fkv.fst \n\
	quit \n" > /tmp/fkv-fst-script
	$(XFST) < /tmp/fkv-fst-script
	@rm -f /tmp/fkv-fst-script

# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > /tmp/caseconv-script
	$(XFST) < /tmp/caseconv-script
	@rm -f /tmp/caseconv-script


# This goal depends on allcaps.xfst

allcaps.fst: ../bin/allcaps.fst
../bin/allcaps.fst: allcaps.xfst
	@echo
	@echo "*** Building allcaps.fst ***" ;
	@echo
	@printf "source allcaps.xfst \n\
	save stack ../bin/allcaps.fst \n\
	quit \n" > /tmp/tok-script
	$(XFST) < /tmp/tok-script
	@rm -f /tmp/tok-script


# The third goal is to build fkv.save
# This goal depends on twol-fkv.bin and a bunch of lexicon files

fkv.save: ../bin/fkv.save
../bin/fkv.save: ../bin/twol-fkv.bin $(LEX)
	@echo
	@echo "*** Building fkv.save ***" ;
	@echo
	printf "compile-source $(LEX) \n\
	read-rules ../bin/twol-fkv.bin \n\
	compose-result \n\
	save-result ../bin/fkv.save \n\
	quit \n" > /tmp/fkv-save-script
	$(LEXC) < /tmp/fkv-save-script
	rm -f /tmp/fkv-save-script


# The fourth goal is to build twol-fkv.bin
# This goal depends on twol-fkv.txt

twol-fkv.bin: ../bin/twol.fkv.bin
../bin/twol-fkv.bin: twol-fkv.txt
	@echo
	@echo "*** Building twol-fkv.bin ***" ;
	@echo
	@printf "read-grammar twol-fkv.txt \n\
	compile \n\
	save-binary ../bin/twol-fkv.bin \n\
	quit \n" > /tmp/twol-fkv-script
	$(TWOLC) < /tmp/twol-fkv-script
	@rm -f /tmp/twol-fkv-script

# Here we include a preprocessor.
# This goal depends on tok.txt

tok.fst: ../bin/tok.fst 
../bin/tok.fst: tok.txt
	@echo
	@echo "*** Building the tokenizer tok.fst ***" ;
	@echo
	@printf "source tok.txt \n\
	save stack ../bin/tok.fst \n\
	quit \n" > /tmp/tok-script
	$(XFST) < /tmp/tok-script
	@rm -f /tmp/tok-script


# Here we make the abbrevation file for our current preprocessor, 
# the perl-based preprocess (located in the script catalogue)

empty:=
comma:=,
space:=$(empty) $(empty)
ABBRSRCS=$(subst $(space),$(comma),$(LEX))

scripts=$(HOME)/gt/script

abbr: ../bin/abbr.txt
../bin/abbr.txt: $(scripts)/abbr-extract $(scripts)/langTools/Util.pm $(LEX)
	@echo
	@echo "*** Extracting abbreviations from abbr-fkv-lex.txt to abbr.txt ***" ;
	@echo
	@perl -I $(scripts) $(scripts)/abbr-extract \
		--output=$@ \
		--abbr_lex=abbr-fkv-lex.txt \
		--lex=$(ABBRSRCS)


# "make clean" is there to remove the binary files at will.

clean:
	@rm -f ../bin/*.fst ../bin/*.save ../bin/*.bin
#	@mv ../bin/fkv.fst ../bin/fkv.old




