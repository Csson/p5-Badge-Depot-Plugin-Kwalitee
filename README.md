# NAME

Badge::Depot::Plugin::Kwalitee - Kwalitee badge for Badge::Depot

<div>
    <p>
    <img src="https://img.shields.io/badge/perl-5.10+-blue.svg" alt="Requires Perl 5.10+" />
    <a href="https://travis-ci.org/Csson/p5-Badge-Depot-Plugin-Kwalitee"><img src="https://api.travis-ci.org/Csson/p5-Badge-Depot-Plugin-Kwalitee.svg?branch=master" alt="Travis status" /></a>
    <a href="http://cpants.cpanauthors.org/release/CSSON/Badge-Depot-Plugin-Kwalitee-0.0103"><img src="http://badgedepot.code301.com/badge/kwalitee/CSSON/Badge-Depot-Plugin-Kwalitee/0.0103" alt="Distribution kwalitee" /></a>
    <a href="http://matrix.cpantesters.org/?dist=Badge-Depot-Plugin-Kwalitee%200.0103"><img src="http://badgedepot.code301.com/badge/cpantesters/Badge-Depot-Plugin-Kwalitee/0.0103" alt="CPAN Testers result" /></a>
    <img src="https://img.shields.io/badge/coverage-71.2%-red.svg" alt="coverage 71.2%" />
    </p>
</div>

# VERSION

Version 0.0103, released 2016-08-12.

# SYNOPSIS

If used standalone:

    use Badge::Depot::Plugin::Kwalitee;

    my $badge = Badge::Depot::Plugin::Kwalitee->new(dist => 'The-Dist', version => '0.1002', author => 'AUTHORID');

    print $badge->to_html;
    # prints:
    <a href="http://cpants.cpanauthors.org/release/AUTHORID/The-Dist-0.1002">
        <img src="http://badgedepot.code301.com/badge/kwalitee/AUTHORID/The-Dist/0.1002" alt="Distribution kwalitee" />
    </a>

If used with [Pod::Weaver::Section::Badges](https://metacpan.org/pod/Pod::Weaver::Section::Badges), in weaver.ini:

    [Badges]
    ; other settings
    badge = kwalitee
    ; set author here
    -kwalitee_author = AUTHORID

# DESCRIPTION

Creates a [Kwalitee](http://cpants.cpanauthors.org) badge for a distribution.

This class consumes the [Badge::Depot](https://metacpan.org/pod/Badge::Depot) role.

# ATTRIBUTES

This badge tries to use distribution meta data to set the attributes. If that is available most attributes need not be set manually. The following checks are made:

1. If the badge is used via [Pod::Weaver::Section::Badges](https://metacpan.org/pod/Pod::Weaver::Section::Badges) during a [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla) build, then `version` and `dist` are set to the values in the Dist::Zilla object.
2. If there is a `META.json` in the distribution root then that is used to set `version` and `dist`.

If neither of those are true, then you should also pass `dist` and `version` to the constructor.

## author

The releaser's CPAN identity. Required.

## dist

Distribution name. With dashes, not colons.

## version

Distribution version.

## base\_url

Default: `https://badgedepot.code301.com`

Set this if you wish to use another instance of [Badge::Depot::App](https://metacpan.org/pod/Badge::Depot::App).

# SEE ALSO

- [Badge::Depot](https://metacpan.org/pod/Badge::Depot)
- [Task::Badge::Depot](https://metacpan.org/pod/Task::Badge::Depot)

# SOURCE

[https://github.com/Csson/p5-Badge-Depot-Plugin-Kwalitee](https://github.com/Csson/p5-Badge-Depot-Plugin-Kwalitee)

# HOMEPAGE

[https://metacpan.org/release/Badge-Depot-Plugin-Kwalitee](https://metacpan.org/release/Badge-Depot-Plugin-Kwalitee)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
