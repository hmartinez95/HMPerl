#!C:/Perl/bin/perl.exe
# Sample definition from Perl and Apache book. 
use warnings;
use 5.012;  
&log("Starting the Program ");

# Loop an Array by Element 
&log("Print array by element ");
my @vowels = qw /a e i o u/;
foreach my $letter (@vowels) {
	print "$letter \n";
}

&log("Log array by variable ");
# Loop and array by Variable
foreach my $i (0..$#vowels) {
	print "$vowels[$i] \n";
}

sub log {
	my $message = shift;
	my $time = localtime;
	
	print "$time -- $message \n";
}
&log (" ... End of program ... ");