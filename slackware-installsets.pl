#!/usr/bin/perl -w

# ansible_slackware_bootstrap
# File slackware-installsets.pl
# Version 1.0
#
# &copy; 2016, Joey Kelly
# Written by Joey Kelly, http://joeykelly.net
#
# https://github.com/mmlj4/ansible_slackware_bootstrap


# This script is called by slackware-installsets.yaml and installs Slackware sets as requested

use strict;

my $set = shift;
chomp $set;

# these are the official sets available on the slackware mirrors
my @sets = qw (a ap d e f k kde kdei l n t tcl x xap xfce y);

# NOTE: if you have your own repo and want to include your own sets, list them here
# ...but actually getting them installed might require slackpkg+ or similar, YMMV
my @customsets = qw();
push @sets, @customsets;

# ___FIXME___ run slackpkg update first
my $install = "echo Y | slackpkg -dialog=off -default_answer=y -spinning=off -postinst=off install $set";

if ($set ~~ @sets) {
  # ___FIXME___ stop slackpkg if it's already running
  # rm /var/lock/slackpkg.*
  print "running: $install\n\n";
  system $install;
#  my $log = `$install`;
#  print "$log\n";
} else {
  print "not a valid slackware set, sorry\n";
}
