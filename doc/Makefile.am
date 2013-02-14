## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# List all jspwiki files that should be created from source files in the
# JSP_PAGES variable. The filename pattern is as follows:
#
# dir/filename.lexc => filename-dir.jspwiki

if CAN_DOCC

JSP_PAGES=root-morphology.jspwiki \
		  nouns-affixes.jspwiki \
		  pronouns-affixes.jspwiki \
		  verbs-affixes.jspwiki \
		  nouns-stems.jspwiki \
		  abbreviations-stems.jspwiki      \
		  adjectives-stems.jspwiki         \
		  prepositions-stems.jspwiki        \
		  adverbs-stems.jspwiki            \
		  closed-stems.jspwiki       \
		  nouns-stems.jspwiki              \
		  propernouns-stems.jspwiki        \
		  punctuation-stems.jspwiki        \
		  pronouns-stems.jspwiki \
		  verbs-stems.jspwiki \
		  fkv-phon-phonology.jspwiki
#		  acronyms-stems.jspwiki           \
# clitics-morphology.jspwiki       \
# compounding-morphology.jspwiki   \
# smi-propernouns-stems.jspwiki    \
# subjunctions-stems.jspwiki       \
# adjectives-oahpa-affixes.jspwiki \
# adjectives-affixes.jspwiki       \
# propernouns-affixes.jspwiki      \
ALLINONE_JSP_PAGE=$(GTLANG).jspwiki

LINKS=Links.jspwiki

endif # CAN_DOCC

include $(top_srcdir)/am-shared/doc-include.am
