use strict;
use warnings;
use utf8;

use Test::More;
use Math::Util qw(factorize);

my @test = (
    {
        input  => 20,
        output => { 2 => 2, 5 => 1 },
    },
    {
        input  => 21,
        output => { 3 => 1, 7 => 1 },
    },
    {
        input  => 40,
        output => { 2 => 3, 5 => 1 },
    },
);

for ( @test ){
    my $got = factorize( $_->{input} );
    is_deeply( $got, $_->{output} );
}
done_testing();
