#!/usr/bin/perl -w

# ansible_slackware_bootstrap
#
# File: slackware-install-perl-and-python.pl
# Version 1.0
# Copyright Joey Kelly (joeykelly.net)
# March 9, 2016
# License: GPL version 2
#
# https://github.com/mmlj4/ansible_slackware_bootstrap


# It seems we can't do much of anything remotely unless Perl and python are installed on the target slackware box, so let's get them installed.

use strict;

my $host = shift || '';
$host = safechars($host);

my $platformbits = shift || '';
$platformbits = safechars($platformbits);
die unless ($platformbits == 32 || $platformbits == 64);

# # ___FIMXE___ use uname -m and determine this programmatically
# choose your poison... but verify these links yourself
my %mirror;
$mirror{32} = 'http://mirrors.slackware.com/slackware/slackware-14.2';
$mirror{64} = 'http://mirrors.slackware.com/slackware/slackware64-14.2/';

# # ___FIXME___ wrap these in IF clauses
# let's ssh to the box, set up slackpkg, then get Perl and python installed.
print "running: ssh $host 'echo $mirror{$platformbits} > /etc/slackpkg/mirrors'", "\n\n";
system "ssh $host 'echo $mirror{$platformbits} > /etc/slackpkg/mirrors'";
print "running: ssh $host 'echo Y | slackpkg update'", "\n\n";
system "ssh $host 'echo Y | slackpkg update'";

my $slackpkgcommand = "echo Y | slackpkg -dialog=off -default_answer=y -spinning=off -postinst=off install perl python";
print "running: ssh $host '$slackpkgcommand'", "\n\n";
system "ssh $host '$slackpkgcommand'";


sub safechars {
  my $string = shift;
  $string =~ tr/a-zA-Z0-9\._-//dc;
  return $string;
}
