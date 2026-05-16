#!/usr/bin/perl

use 5.022;
use warnings;

use Digest::CRC qw(crc32);

print "Enter old password: ";
my $old = <>;
chomp $old;

$old .= time();

srand crc32($old);

say map { ('a'..'z', 'A'..'Z', 0..9)[rand 62] } 1..12;
