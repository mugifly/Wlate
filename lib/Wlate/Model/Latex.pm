package Wlate::Model::Latex;

use strict;
use warnings;
use utf8;

use Carp;
use Encode qw(encode decode);

sub new{
	my ($class, $d) = @_;
	my $self = bless({}, $class);
	
	
	return $self;
}

sub texToPNG{
	my $self = shift;
	
}

1;