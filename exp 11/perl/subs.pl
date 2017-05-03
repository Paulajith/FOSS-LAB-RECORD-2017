#/user/bin/perl

print "Enter the string";
my $str = <STDIN> ;
printf "Enter the substring to be found";
my $cat = <STDIN> ;
print "Enter the replacement text";
my $dog = <STDIN> ;

chomp $cat;
chomp $dog;
$str =~ s/$cat/$dog/;
print "$str";
