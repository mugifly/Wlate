package Wlate::Model::Latex;

use strict;
use warnings;
use utf8;

use Carp;
use Encode qw(encode decode);

sub new{
	my ($class, $d) = @_;
	my $self = bless({}, $class);
	
	#$self->{dbi} = $$d;
	#$self->{helper} = OdenWebAPI::Helper->new;
	$self->{pathWorkBaseDir} = "/home/ht11a018/temp/wlate/";
	$self->{pathWorkDir} = "work-20120729";
	$self->{tempPrefix} = "work-20120729";
	
	return $self;
}

sub texToPNG{
	my $self = shift;
	system('platex -interaction=nonstopmode '.$self->{pathWorkBaseDir}.$self->{tempPrefix}.'.tex -output-directory= '.$self->{pathWorkBaseDir}.';');
	system('dvipdfmx '.$self->{pathWorkBaseDir}.$self->{tempPrefix});
	system('gs -q -sDEVICE=pngalpha -sOutputFile='.$self->{tempPrefix}.'.png -r150 -dNOPAUSE -dBATCH -dSAFER -dEPSCrop -dGraphicsAlphaBits=4 -dTextAlphaBits=4 -dMaxBitmap=5000000 '.$self->{tempPrefix}.'.pdf');
	return $self->{tempPrefix}."png";
}

1;