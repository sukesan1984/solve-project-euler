#!/usr/bin/perl

my $max_num = $ARGV[0];

main();

sub main {
    my @list = ( 1 .. ($max_num - 1) );
    my $result = 0;
    for my $num ( @list ){
        if ( !( $num % 3 ) || !( $num % 5 ) ) {
            print $num . "\n";
            $result += $num;
        }
    }
    print "the answer is " . $result . "\n";
}

1;
__END__

If we list all the natural numbers below 10 that are multiples of 3 or 5, we
get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
