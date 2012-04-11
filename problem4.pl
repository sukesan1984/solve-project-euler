#!/usr/bin/perl

my $start = 999;

print "the answer:" .  main();

sub main {
    for ( my $i = 0 ; $i < 900; $i++ ){
         my $number = get_number( $start - $i );
         for ( my $j = 1; $j < 900; $j++ ){
             return $number if ( ( $number % (
                         $start - $j ) ) == 0 && $j < 1000 && ( $number / (
                         $start - $j ) < 1000));
         }
    }
}

sub get_number {
    my $i = shift;
    my $j = int( $i / 100 );
    my $k = int( ( $i % 100 ) / 10 );
    my $l = int( ( $i % 100 ) % 10 );
    return ( $i * 1000 + $l * 100 + $k * 10 + $j );
}


1;
__END__
A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009 = 91  99.

Find the largest palindrome made from the product of two 3-digit numbers.
