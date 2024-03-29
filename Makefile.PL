use 5.012;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Quote::Reference',
    AUTHOR              => q{Lukas Mai <l.mai@web.de>},
    VERSION_FROM        => 'lib/Quote/Reference.pm',
    ABSTRACT_FROM       => 'lib/Quote/Reference.pm',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '6.56',
    },
    LICENSE => 'perl',
    PL_FILES            => {},
    BUILD_REQUIRES => {
        'strict' => 0,
        'Test::More' => 0,
    },
    PREREQ_PM => {
    	'Carp' => 0,
    	'XSLoader' => 0,
        'warnings' => 0,
    },
    MIN_PERL_VERSION => '5.12.0',
    META_MERGE => {
        resources => {
            repository => {
                url => 'git://github.com/mauke/Quote-Reference.git',
                web => 'https://github.com/mauke/Quote-Reference',
                type => 'git',
            },
        },
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Quote-Reference-*' },
);
