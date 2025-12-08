#!/usr/bin/perl -w
#
# smi-fkv-conversion.pl
# Convert names in the SMI propernoun lexicon to FKV needs.

use strict;
use utf8;
use feature 'unicode_strings';
BEGIN {
       $| = 1;
       binmode(STDIN, ':encoding(UTF-8)');
       binmode(STDOUT, ':encoding(UTF-8)');
}
use open qw( :encoding(UTF-8) :std );

while(<>) {
    # String substitutions:
    s/đ\+Use\/SpellNoSugg/!đ+Use\/SpellNoSugg/g ;
    s/\([a-z]\)9 /$1 /g ;
    

	my $line = $_;

	print $line;
}

