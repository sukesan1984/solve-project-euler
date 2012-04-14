#!/usr/bin/perl

use strict;
use warnings;
use utf8;

use Math::Util qw(sum_square add_k);

my $number = $ARGV[0];

main();

sub main{
    my $answer = ( add_k( $number ) ) ** 2 - sum_square( $number );
    print "the answer:". $answer;
    print "\n";
}

1;
