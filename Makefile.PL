use inc::Module::Install;
name 'Acme-ChuckNorrisException';
all_from 'lib/Acme/ChuckNorrisException.pm';

requires 'Acme::ChuckNorris';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
