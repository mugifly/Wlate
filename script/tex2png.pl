#!/usr/bin/env perl

use strict;
use warnings;

my $WORKDIR =  $ARGV[0] or die;
my $TEMP_PREFIX =  $ARGV[1] or die;

chdir($WORKDIR);

print system('platex -interaction=nonstopmode '.$TEMP_PREFIX.'');

print system('dvipdfmx '.$TEMP_PREFIX);

print system('gs -q -sDEVICE=pngalpha -sOutputFile='.$TEMP_PREFIX.'%03d.png -r150 -dNOPAUSE -dBATCH -dSAFER -dEPSCrop -dGraphicsAlphaBits=4 -dTextAlphaBits=4 -dMaxBitmap=5000000 '.$TEMP_PREFIX.'.pdf');

exit;
