use strict;
use warnings;
use utf8;

use Test::More;
use Math::Util qw(sum_square);

{
    my @test = (
        {
            input  => 1,
            output => 1
        },
        {
            input  => 2,
            output => 5,
        },
        {
            input  => 3,
            output => 14,
        },
        {
            input  => 4,
            output => 30,
        },
    );
    for ( @test ){
        my $got = sum_square( $_->{input} );
        is( $got, $_->{output} );
    }
}

done_testing();
1;
