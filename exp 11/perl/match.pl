#!/usr/bin/perl
use strict;
use warnings;


print "Enter your input\n";
my $bar = <STDIN>;
print "Enter the word to match\n";
my $match = <STDIN>;
chomp $match;
if ($bar =~ /$match/){
print "First time is matching\n";
}else{
print "First time is not matching\n";
}

print "Enter the second expression";
my $str = <STDIN>;

print "Enter the match";
my $str2 = <STDIN>;
chomp $str2;

$str =~ m/$str2/ ;

print "Before : $`\n";
print "Match : $&\n";
print "After : $'\n";
