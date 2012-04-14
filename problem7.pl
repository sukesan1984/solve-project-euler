#!/usr/bin/perl
use strict;
use warnings;
use utf8;

use Data::Dump qw(dump);
my $number = $ARGV[0];
my $got = main();

print "the answer:" . $$got[-1];
print "\n";

sub main{
    my $count = 0;
    my $primers = [ 2 ];

    while(1){
        if ( $count > 2 ) {
            $primers = add_primer( $count, $primers );
        }

        $count++;
        return $primers if ( scalar(@$primers) == $number );
    }
}

sub add_primer{
    my ( $number, $primers ) = @_;
    for my $primer ( @$primers ){
        return $primers unless ( $number % $primer );
    }
    push @$primers, $number;
    return $primers;
}

1;
