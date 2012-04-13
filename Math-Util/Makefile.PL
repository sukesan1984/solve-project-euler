use inc::Module::Install;
name 'Math-Util';
all_from 'lib/Math/Util.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
