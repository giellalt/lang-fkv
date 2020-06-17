#!/usr/bin/perl -w
#
# smi-smn-conversion.pl
# Convert names in the SMI propernoun lexicon to smn.
# $Id: smi-smn-conversion.pl 91035 2014-03-24 22:56:01Z sjur $

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
	s/đ+Use\/SpellNoSugg+N+Sem\/Sign+Use\/NG:đ ab-dot-noun-trab/!đ+Use\/SpellNoSugg+N+Sem\/Sign+Use\/NG:đ ab-dot-noun-trab/g ;

	my $line = $_;

	print $line;
}

