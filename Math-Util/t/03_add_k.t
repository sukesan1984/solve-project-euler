use strict;
use warnings;
use utf8;

use Test::More;
use Math::Util qw( add_k );

is( add_k(1),  1 );
is( add_k(2),  3 );
is( add_k(3),  6 );
is( add_k(4),  10 );
is( add_k(10), 55 );
done_testing();
