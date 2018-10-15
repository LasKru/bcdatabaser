use strict;
use warnings;

use Test::More tests => 2;
use Test::Script;

my $script = 'bin/reference_db_creator.pl';
my %options = (exit => 1);

Test::Script::script_runs($script, \%options, "Test if script runs without parameters");
script_stderr_like(qr/Usage/, "Result of run without parameters returned Usage information");