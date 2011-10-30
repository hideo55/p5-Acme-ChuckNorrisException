use strict;
use Test::More tests => 1;

$SIG{__DIE__} = sub{ print $_[0];  };

BEGIN{
	no warnings 'once';
	*CORE::GLOBAL::exit = sub{
		warn "test";
	};
}

use Acme::ChuckNorrisException;

eval{
	die Acme::ChuckNorrisException->new();
};
if( $@ ){
	ok(1);
}

package Foo;

__END__
