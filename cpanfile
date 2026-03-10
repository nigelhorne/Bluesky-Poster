# Generated from Makefile.PL using makefilepl2cpanfile

requires 'Carp';
requires 'JSON::MaybeXS';
requires 'LWP::UserAgent';
requires 'Object::Configure';
requires 'Params::Get';
requires 'Params::Validate::Strict';
requires 'URI';

on 'test' => sub {
	requires 'Test::DescribeMe';
	requires 'Test::Most';
};
on 'develop' => sub {
	requires 'Devel::Cover';
	requires 'Perl::Critic';
	requires 'Test::Pod';
	requires 'Test::Pod::Coverage';
};
