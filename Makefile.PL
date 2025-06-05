use strict;
use warnings;
use ExtUtils::MakeMaker;

my $dist = {
	COMPRESS => 'gzip -9f', # Compress tarball using gzip
	SUFFIX => 'gz',	# File suffix for tarball
};

if($^O eq 'darwin') {
	$dist->{'TAR'} = 'gtar';
}

WriteMakefile(
	NAME	 => 'Bluesky::Poster',
	VERSION_FROM => 'lib/Bluesky/Poster.pm',
	ABSTRACT => 'Simple interface for posting to Bluesky (AT Protocol)',
	AUTHOR => 'Nigel Horne',
	LICENSE => 'GPL',
	PREREQ_PM => {
		'LWP::UserAgent' => 0,
		'JSON::MaybeXS' => 0,
		'URI'		 => 0,
		'Carp' => 0,
	}, TEST_REQUIRES => {
		'Test::DescribeMe' => 0,
		'Test::Most' => 0,
	}, dist => $dist,
	clean => {
		FILES => 'Bluesky-Poster-*',
	}
);
