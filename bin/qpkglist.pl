#!/usr/bin/perl

# File: qpkglist.pl
# Version 1.0
# Copyright Joey Kelly (joeykelly.net)
# August 13, 2016
# License: GPL version 2

use strict;
use warnings;

my $search = shift;
chomp $search;
$search = safechars($search);

system "ls /var/log/packages/ | grep -i $search" if $search;

sub safechars {
  my $string = shift;
  $string =~ tr/a-zA-Z0-9\._-//dc;
  return $string;
}

