#!C:/Perl/bin/perl.exe
# Sample for Array Reference - also search for Perl scalar reference. 
use warnings;
use 5.012;  
use Data::Dumper;
# Initialization
my @array = qw / apple banana carrot/;
my $arrayRef = [@array];
my $anonArrayRef = ['apple', 'banana', 'carrot'];	# create anonymous Array Ref.

# now let's create a hash table 
my %hash = (
	'apple' => 'red',
	'banana' => 'yellow',
	'carrot' => 'orage',
) ;
my $hashRef = {%hash};
my $anonHashRef = {
	'apple' => 'rolo',
	'banana' => 'amarillo',
	'carrot' => 'naranja',
};
print Dumper ($arrayRef, $anonArrayRef, $hashRef, $anonHashRef );

##############################################################
# This section is about Reference Deconstruct
##############################################################

my $productColors = {
	'carrot' => 'naranja',
	'apple' => 'rolo',
	'banana' => 'amarillo',
};
my @produce = sort keys %{$productColors};
my @colors = sort values %{$productColors};

print "Sorted list of Products: ". join(', ', @produce). "\n";
print "Sorted list of Colors: ". join(', ', @colors). "\n";
