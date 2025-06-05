use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Bluesky::Poster',
    VERSION_FROM => 'lib/Bluesky/Poster.pm',
    ABSTRACT     => 'Simple interface for posting to Bluesky (AT Protocol)',
    AUTHOR       => 'Nigel Horne',
    LICENSE      => 'perl',
    PREREQ_PM    => {
        'LWP::UserAgent' => 0,
        'JSON'           => 0,
        'URI'            => 0,
        'Carp'           => 0,
    },
);

