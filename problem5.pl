#!/usr/bin/perl

use Data::Dump qw(dump);
use Math::Util qw(factorize);

my $number = @ARGV[0];
main();

sub main{
    my $maps;
    for ( my $i = 2; $i <= $number; $i++ ){
        my $factorized = factorize( $i );
        while ( my ( $key, $value ) = each( %$factorized ) ){
            $maps->{$key} = $value if ( !exists($maps->{$key}) || $maps->{$key} < $value );
        }
    }
    my $answer = 1;
    while( my ( $key, $value ) = each( %$maps ) ){
        $answer *= $key ** $value;
    }
    print "the answer:" . $answer;
    print "\n";
}

1;
__END__
2520 is the smallest number that can be divided by each of the numbers from 1
to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the
numbers from 1 to 20?
