#!/usr/bin/perl -w
use utf8 ;

# Minimalistic perl script to move from html input to 
# xml output. 

# HOW TO HOW TO HOW TO HOW TO, 
# standing in fkv (here with +N+Sg+Par): 

# cat src/morphology/stems/nouns.lexc |grep ";"|tr '\!' '£'| cut -d"£" -f1|tr '[+ ]' ':' |grep -v '_pl'|cut -d":" -f1| sort|uniq |sed 's/$/+N+Sg+Par/'|lookup src/generator-gt-norm-dial_Por.xfst| grep ' '|perl src/scripts/all_fst_output_as_table.pl > doc/TestiSgPar.xml

# Thereafter, write a hyperlink to TestiSgPar.html in doc/KvenDocumentation.jspwiki, e.g. under Test reports

print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>																			  \n" ;
print "<!DOCTYPE document PUBLIC \"-//APACHE//DTD Documentation V2.0//EN\" \"http://forrest.apache.org/dtd/document-v20.dtd\">\n" ;
print "<document xmlns:xi=\"http://www.w3.org/2001/XInclude\" xml:lang=\"en\">												  \n" ;
print "  <header>																										  \n"	  ;
print "    <title>Generated forms</title>																			  \n"		  ;
print "  </header>																									  \n"		  ;
print "  <body>																										  \n"		  ;
print "    <section>																								  \n"		  ;
print "<table>\n" ;

while ($line = <> ) {
    chomp $line;
     my ($lemma,
     $analysis)
	= split /\t/, $line ;
    print "<tr><td>$lemma</td><td>$analysis</td></tr>\n";
}

print "<\/table>\n" ;

print "    </section>\n" ;
print "  </body>	 \n" ;
print "</document>	 \n" ;