package Wlate;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
	my $self = shift;
	
	# Router
	my $r = $self->routes;
	
	# Normal route to controller
	$r->route('/')->to('user#editor', namespace => 'Wlate::Controller');
	
	$r->route('/tex2png')->to('latex#tex2png', namespace => 'Wlate::Controller');
}

1;
