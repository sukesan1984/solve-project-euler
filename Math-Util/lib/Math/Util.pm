package Math::Util;
use strict;
use warnings;
our $VERSION = '0.01';

use base 'Exporter';

our @EXPORT_OK = qw/factorize sum_square add_k/;

sub factorize {
    my ( $number, $primers ) = @_;

    for ( my $i = 2; $i <= $number; $i++ ){
        if ( ($number % $i) == 0 ) {
            $primers->{$i}++;
            factorize( $number / $i, $primers );
            last;
        }
    }
    return $primers;
}

sub sum_square {
    my ( $k ) = @_;
    return ( 2 * $k + 1) * $k * ( $k + 1 ) / 6;
}

sub add_k{
    my ( $k ) = @_;
    return ( $k ) * ( $k + 1 ) / 2;
}

1;
__END__

=head1 NAME

Math::Util -

=head1 SYNOPSIS

  use Math::Util;

=head1 DESCRIPTION

Math::Util is

=head1 AUTHOR

Kosuke Takami E<lt>takamikousuke@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
