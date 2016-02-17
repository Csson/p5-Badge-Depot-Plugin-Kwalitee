use strict;
use warnings;
use Test::More;
use if $ENV{'AUTHOR_TESTING'}, 'Test::Warnings';

use Badge::Depot::Plugin::Kwalitee;

my $badge = Badge::Depot::Plugin::Kwalitee->new(_meta => { dist => 'Badge-Depot-Plugin-Kwalitee', version => '0.0100' });

is $badge->to_html,
   '<a href="http://cpants.cpanauthors.org/dist/Badge-Depot-Plugin-Kwalitee-0.0100"><img src="https://badgedepot.code301.com/badge/kwalitee/Badge-Depot-Plugin-Kwalitee/0.0100" alt="Distribution kwalitee" /></a>',
   'Correct html';

done_testing;
