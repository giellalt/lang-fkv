## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

SUBDIRS = fst cg3

#################################################
#### Add language-specific build rules here: ####


# Hfst - add weights to compounds if using tropical-semiring fst format:
if WITH_OFST_TROPICAL
generator-raw-gt-desc.hfst: generator-raw-gt-desc.tmp.hfst
	$(AM_V_REWEIGHT)$(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
			-S '+Cmp' -a 10 --arcs-only -i $< \
		> $@
endif


# We need to add processing of language-specific tags in the analyser:
analyser-gt-desc.%: analyser-gt-desc.tmp.% \
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
analyser-dict-gt-desc.%: analyser-dict-gt-desc.tmp.% \
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
analyser-dict-gt-desc-mobile.%: analyser-dict-gt-desc-mobile.tmp.% \
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

analyser-gt-norm.%: analyser-gt-norm.tmp.% \
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
analyser-gt-norm.xfst: analyser-gt-norm.tmp.xfst \
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
analyser-pmatchdisamb-gt-desc.hfst: analyser-pmatchdisamb-gt-desc.tmp.hfst \
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
analyser-disamb-gt-desc.%: analyser-disamb-gt-desc.tmp.%      \
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
generator-gt-%.$(1): generator-gt-%.tmp.$(1) \
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
generator-dict-gt-norm.%: generator-dict-gt-norm.tmp.%             \
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

include $(top_srcdir)/../giella-core/am-shared/src-dir-include.am
