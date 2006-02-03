# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

use strict;
use warnings;

use Test::More qw(no_plan); 

use CGI::AppBuilder::Message;
my $class = 'CGI::AppBuilder::Message';
my $obj = CGI::AppBuilder::Message->new; 

isa_ok($obj, "CGI::AppBuilder::Message");

my @md = @CGI::AppBuilder::Message::EXPORT_OK;
foreach my $m (@md) {
    ok($obj->can($m), "$class->can('$m')");
}

1;

