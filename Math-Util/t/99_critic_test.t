use strict;
use warnings;
use utf8;
use Cwd qw(abs_path);
use File::Basename;

use Test::Perl::Critic (-severity => 3);
use Test::More tests => 1;


{
    my $file =
      abs_path( dirname( abs_path($0) )
          . q|/../lib/Math/Util.pm|
      );
    critic_ok($file);
}

done_testing();
1;

=head1 NAME

99_clitic_Condition.t - Unit test for Condition.pm

=head1 SYNOPSIS

prove t/Condition

=head2 DESCRIPTION

This test for checking coding rule in Service::Quest::Condition.

=head2 AUTHOR

Kosuke Takami <takami.kosuke@dena.jp>

=cut

