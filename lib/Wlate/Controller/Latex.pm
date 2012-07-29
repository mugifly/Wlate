package Wlate::Controller::Latex;
use Mojo::Base 'Mojolicious::Controller';

use Wlate::Model::Latex;

sub tex2png {
	my $self = shift;
	
	my $latex = Wlate::Model::Latex->new();
	
	
	$self->render_static('temp/work-20120729.png');
	
}

1;
