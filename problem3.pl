#!/usr/bin/perl

my $number = $ARGV[0];

main();

sub main {
	print "the answer:" . get($number) . "\n";
}

# 渡された数字を割り切る素数が出たらその素数と、割り切られた数を返す。
sub get {
	my $num  = shift;
	my $count = 2;
	while(1){
		unless ( $num % $count ){
			return $num if( $num == $count );
			last;
		};
		$count++;
	}
	return get( $num / $count );
}

__END__
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
