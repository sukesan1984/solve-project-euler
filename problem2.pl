#!/usr/bin/perl

my $threshold = $ARGV[0];

main();

sub main{
    print "1\n";
    print "2\n";
    my $result = 2;
    $result = get_next_fibonacci( 1, 2, $threshold, $result );
    print "the answer is:" . $result . "\n";
}

sub get_next_fibonacci{
    my ( $k, $k_plus_1, $end, $result ) = @_;
    my $k_plus_2 = $k + $k_plus_1;
    print $k_plus_2 . "\n";
    if ( $k_plus_2 < $end ){
        $result += $k_plus_2 unless ( $k_plus_2 % 2 );
        return get_next_fibonacci( $k_plus_1, $k_plus_2,
            $end, $result );
    } else {
        return $result;
    }
}
1;

__END__

Each new term in the Fibonacci sequence is generated by adding the previous
two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed
four million, find the sum of the even-valued terms.
