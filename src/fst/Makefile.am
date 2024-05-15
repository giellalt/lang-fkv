## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# always build . last here, and tagsets have to be built after morphology
SUBDIRS = morphology filters phonetics syllabification orthography transcriptions tagsets . test

####### Automake targets: ########

# Define target variables first, before assigning to them:
GT_ANALYSERS=
GT_GENERATORS=
CUSTOM_FSTS=

#### Local modifications in *fst processing: ####
####
#### Copy the fallback targets, and rename them to the desired targets. Then:
#### Replace the 'cp' command (Xerox) / Prepend the hfst-invert command (Hfst -
#### remember to move the $<) with whatever you need to complete
#### the processing to get the final target transducer.
#### Remember to add the dependencies as well.
#### Also make sure that HFST and Xerox processing are the same.
####
#### If you add new transducers to be built, you need to add them to the
#### relevant variable, e.g.:
####
#### if CAN_HFST
#### GT_GENERATORS+=generator-oahpa-gt-norm.hfst
#### endif
####
#### NB!!!! The HFST targets should get a hyphen after 'analyser'/'generator'
#### respectively, to make the local targets minimally different from and
#### slightly more specific than the fallback targets. This is to avoid warnings
#### about duplicate targets. That is, the local targets should looke like:
####
#### analyser-%.hfst: analyser-%.tmp.hfst
#### generator-%.hfst: generator-%.tmp.hfst

##################################################################
#### BEGIN: Add local processing instructions BELOW this line ####
##################################################################

########################################################
#### Add language-specific transducer targets here: ####

#### Xerox transducers:
if CAN_XFST
GT_ANALYSERS+=
GT_GENERATORS+=

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=
endif # WANT_CUSTOM_FSTS

endif # CAN_XFST

#### HFST transducers
if CAN_HFST
GT_ANALYSERS+=
GT_GENERATORS+=

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=
endif # WANT_CUSTOM_FSTS

endif # CAN_HFST

#### FOMA transducers
if CAN_FOMA
GT_ANALYSERS+=
GT_GENERATORS+=

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=
endif # WANT_CUSTOM_FSTS

endif # CAN_FOMA

#################################################
#### Add language-specific build rules here: ####


# Hfst - add weights to compounds if using tropical-semiring fst format:
if WITH_OFST_TROPICAL
.generated/generator-raw-gt-desc.hfst: .generated/generator-raw-gt-desc.tmp.hfst
	$(AM_V_REWEIGHT)$(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
			-S '+Cmp' -a 10 --arcs-only -i $< \
		> $@
endif


# We need to add processing of language-specific tags in the analyser:
.generated/analyser-gt-desc.%: .generated/analyser-gt-desc.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\" \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# We need to add processing of language-specific tags in the analyser:
.generated/analyser-dict-gt-desc.%: .generated/analyser-dict-gt-desc.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\" \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# We need to add processing of language-specific tags in the analyser:
.generated/analyser-dict-gt-desc-mobile.%: .generated/analyser-dict-gt-desc-mobile.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\" \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

.generated/analyser-gt-norm.%: .generated/analyser-gt-norm.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-MinusSpell-strings.% \
					filters/insert-default-compounding-tags.% \
					filters/insert-default_left_compounding-tags.% \
					filters/split-CmpN-tags.% \
					filters/convert_to_flags-CmpNP-tags.% \
					filters/split-CmpNP-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.$*\"        \
			.o. @\"filters/split-CmpN-tags.$*\"                      \
			.o. @\"filters/insert-default_left_compounding-tags.$*\" \
			.o. @\"filters/insert-default-compounding-tags.$*\"      \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$*\"            \
			.o. @\"filters/split-CmpNP-tags.$*\"                       \
			.o. @\"filters/remove-MinusSpell-strings.$*\"              \
			.o. @\"$<\"                                                \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# The operation 'twosided flag-diacritics" crashes Xerox badly, so we do with
# a simpler, less restrictive normative fst when building with Xerox:
.generated/analyser-gt-norm.xfst: .generated/analyser-gt-norm.tmp.xfst \
					filters/remove-norm-comp-tags.xfst \
					filters/remove-derivation-position-tags.xfst 
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-norm-comp-tags.xfst\" \
			.o. @\"filters/remove-derivation-position-tags.xfst\" \
			.o. @\"$<\"                                         \
			;\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)


# We need special treatment of the disamb fst going to further pmatch processing
# mainly due to the target pattern, thus listed here. The rule body and the
# dependencies should be the same as the regular disamb analysers below:
.generated/analyser-pmatchdisamb-gt-desc.hfst: .generated/analyser-pmatchdisamb-gt-desc.tmp.hfst \
				filters/remove-derivation-position-tags.hfst   \
				filters/remove-norm-comp-tags.hfst \
				filters/remove-orig_lang-tags.hfst             \
				filters/rename-POS_before_Der-tags.hfst        
	$(AM_V_HXFST)$(PRINTF) "read regex \
		    @\"filters/remove-derivation-position-tags.hfst\" \
		.o. @\"filters/remove-norm-comp-tags.hfst\" \
		.o. @\"filters/remove-orig_lang-tags.hfst\"           \
		.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
		.o. @\"$<\"                                           \
		;\n\
	invert net\n\
	save stack $@\n\
	quit\n" | $(HFST_XFST) -p $(MORE_VERBOSITY)



# We need to add processing of language-specific tags in the analysers:
# ... so far only in the XEROX/FOMA disambiguation analyser
.generated/analyser-disamb-gt-desc.%: .generated/analyser-disamb-gt-desc.tmp.%      \
					filters/remove-orig_lang-tags.%           \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.% \
					filters/remove-dialect-tags.%             \
					filters/remove-homonymy-tags.%            \
					filters/rename-POS_before_Der-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-dialect-tags.$*\"            \
			.o. @\"filters/remove-homonymy-tags.$*\"           \
			.o. @\"filters/remove-orig_lang-tags.$*\"          \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\" \
			.o. @\"filters/rename-POS_before_Der-tags.$*\"     \
			.o. @\"$<\"                                        \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)


# We need to add processing of language-specific tags in the generator:
define giella_generators
.generated/generator-gt-%.$(1): .generated/generator-gt-%.tmp.$(1) \
					 filters/remove-derivation-position-tags.$(1)     \
					 filters/remove-norm-comp-tags.$(1) \
					 filters/make-optional-coll-tags.$(1)             \
					 filters/make-optional-lang_hom-tags.$(1)         \
					 filters/rename_optional-POS_before_Der-tags.$(1) 
	$$(AM_V_XFST_TOOL)$$(PRINTF) "read regex \
			    @\"filters/make-optional-coll-tags.$(1)\"             \
			.o. @\"filters/make-optional-lang_hom-tags.$(1)\"         \
			.o. @\"filters/rename_optional-POS_before_Der-tags.$(1)\" \
			.o. @\"filters/remove-derivation-position-tags.$(1)\"     \
			.o. @\"filters/remove-norm-comp-tags.$(1)\" \
			.o. @\"$$<\"                                              \
			;\n\
		 $$(INVERT_XFST)$$(INVERT_FOMA)\
		 save stack $$@\n\
		 quit\n" | $$(XFST_TOOL)
endef
$(foreach fst,hfst xfst foma,$(eval $(call giella_generators,$(fst))))


# Dict-fst local modifications and language-specific changes:
.generated/generator-dict-gt-norm.%: .generated/generator-dict-gt-norm.tmp.%             \
					 filters/remove-derivation-position-tags.%      \
					 filters/remove-norm-comp-tags.% \
					 filters/rename_optional-POS_before_Der-tags.% 
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/rename_optional-POS_before_Der-tags.$*\" \
			.o. @\"filters/remove-derivation-position-tags.$*\"  \
			.o. @\"filters/remove-norm-comp-tags.$*\" \
			.o. @\"$<\"                                          \
			;\n\
		 $(INVERT_XFST)$(INVERT_FOMA)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

include $(top_srcdir)/../giella-core/am-shared/src-fst-dir-include.am
