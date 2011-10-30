package Acme::ChuckNorrisException;
use strict;
use warnings;
use overload (
    'bool'     => \&handler,
    '+'        => \&handler,
    '-'        => \&handler,
    '*'        => \&handler,
    '/'        => \&handler,
    '%'        => \&handler,
    '**'       => \&handler,
    '<<'       => \&handler,
    '>>'       => \&handler,
    'x'        => \&handler,
    '.'        => \&handler,
    '+='       => \&handler,
    '-='       => \&handler,
    '*='       => \&handler,
    '/='       => \&handler,
    '%='       => \&handler,
    '**='      => \&handler,
    '<<='      => \&handler,
    '>>='      => \&handler,
    'x='       => \&handler,
    '.='       => \&handler,
    '<'        => \&handler,
    '<='       => \&handler,
    '>'        => \&handler,
    '>='       => \&handler,
    '=='       => \&handler,
    '!='       => \&handler,
    '<=>'      => \&handler,
    'cmp'      => \&handler,
    'lt'       => \&handler,
    'le'       => \&handler,
    'gt'       => \&handler,
    'ge'       => \&handler,
    'eq'       => \&handler,
    'ne'       => \&handler,
    '&'        => \&handler,
    '|'        => \&handler,
    '^'        => \&handler,
    'neg'      => \&handler,
    '!'        => \&handler,
    '~'        => \&handler,
    '++'       => \&handler,
    '--'       => \&handler,
    'atan2'    => \&handler,
    'cos'      => \&handler,
    'sin'      => \&handler,
    'exp'      => \&handler,
    'abs'      => \&handler,
    'log'      => \&handler,
    'sqrt'     => \&handler,
    '""'       => \&handler,
    '0+'       => \&handler,
    '<>'       => \&handler,
    '${}'      => \&handler,
    '@{}'      => \&handler,
    '%{}'      => \&handler,
    '&{}'      => \&handler,
    '*{}'      => \&handler,
    'nomethod' => \&handler,
    'fallback' => \&handler,
    '='        => \&handler,
);

use Acme::ChuckNorris;

our $VERSION = '0.01';

sub new {
    my $class = shift;
    delete $SIG{__DIE__};
    return bless {}, $class;
}

sub handler {
    print STDERR round_house_kick_to_the_text(
        \q{You don't throw Chuck Norris.. Chuck Norris throws YOU!} );
    CORE::exit(1);
}

1;
__END__

=head1 NAME

Acme::ChuckNorrisException - You cannot throw Chuck Norris

=head1 SYNOPSIS

  use Acme::ChuckNorrisException;

  die Acme::ChuckNorrisException->new();

=head1 DESCRIPTION

This will throw an un-catchable error and make your code fail in style!

Attempting to throw a ChuckNorrisException will result in failure and will
terminate your program. 

Becuse, you don't throw Chuck Norris.. Chuck Norris throws B<YOU>!

=head1 AUTHOR

Hideaki Ohno E<lt>default {at} example.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
