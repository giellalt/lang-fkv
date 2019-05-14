
 cat src/morphology/stems/nouns.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+N+Sg+Par/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/TestiSgPar.xml
 
 cat src/morphology/stems/nouns.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+N+Pl+Par/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/TestiPlPar.xml
 
 cat src/morphology/stems/nouns.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+N+Pl+Ill/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/TestiPlIll.xml
 
 cat src/morphology/stems/nouns.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+N+Sg+Ill/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/TestiSgIll.xml
 
 cat src/morphology/stems/nouns.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+N+Sg+Gen/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/TestiSgGen.xml
 
 cat src/morphology/stems/nouns.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+N+Pl+Gen/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/TestiPlGen.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+Ind+Prs+Sg1/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiIndPrsSg1.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+Ind+Prs+Sg3/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiIndPrsSg3.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+Ind+Prs+Pl1/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiIndPrsPl1.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+Ind+Prs+Pl3/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiIndPrsPl3.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+Ind+Prt+Sg1/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiIndPrtSg1.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+Ind+Prt+Sg3/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiIndPrtSg3.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+Ind+Prt+Pl1/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiIndPrtPl1.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+Ind+Prt+Pl3/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiIndPrtPl3.xml
 

 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+PrfPrc+Sg+Nom/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiActPrfPrc.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Pass+PrfPrc+Sg+Nom/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiPassPrfPrc.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Act+PrsPrc+Sg+Nom/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiActPrsPrc.xml
 
 cat src/morphology/stems/verbs.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+V+Pass+PrsPrc+Sg+Nom/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/VerbTestiPassPrsPrc.xml
 


 cat src/morphology/stems/adjectives.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+A+Sg+Par/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/AdjTestiSgPar.xml
 
 cat src/morphology/stems/adjectives.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+A+Pl+Par/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/AdjTestiPlPar.xml
 
 cat src/morphology/stems/adjectives.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+A+Pl+Ill/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/AdjTestiPlIll.xml
 
 cat src/morphology/stems/adjectives.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+A+Sg+Ill/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/AdjTestiSgIll.xml
 
 cat src/morphology/stems/adjectives.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+A+Sg+Gen/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/AdjTestiSgGen.xml
 
 cat src/morphology/stems/adjectives.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+A+Pl+Gen/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/AdjTestiPlGen.xml

 cat src/morphology/stems/adjectives.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+A+Sg+Superl+Nom/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/AdjTestiSuperlSgNom.xml

 cat src/morphology/stems/adjectives.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+A+Sg+Compar+Nom/'|lookup src/generator-gt-norm-dial_Por.xfst| grep '\t'|rev|sort|rev|perl src/scripts/all_fst_output_as_table.pl > doc/testit/AdjTestiCompSgNom.xml
