#!/usr/bin/perl -w
# Counting the number of bases in some DNA entered on the command line

use strict;

# Collect the DNA from the arguments on the command line
# when the user calls the program.
# If no arguments are given, print a USAGE statement and exit.

# $0 is a special variable that has the name of the program.
my($USAGE) = "$0 is the program name.  It needs a DNA strand entered as an arguement on the command line.\n\n";

# @ARGV is an array containing all command-line arguments.
#
# If it is empty, the test will fail and the print USAGE and exit
# statements will be called.
unless(@ARGV) {
	print $USAGE;
	exit;
}

# Read in the DNA from the argument on the command line.
my($dna) = $ARGV[0];

# Call the subroutine that does the real work, and collect the result.
my($num_of_Gs) = countG ( $dna );
my($num_of_As) = countA ( $dna );
my($num_of_Ts) = countT ( $dna );
my($num_of_Cs) = countC ( $dna );
my($not_dna_base) = countX ( $dna );

# Report result and exit.
print "\nThe DNA $dna has $num_of_Gs G\'s in it!\n";
print "\nThe DNA $dna has $num_of_As A\'s in it!\n";
print "\nThe DNA $dna has $num_of_Ts T\'s in it!\n";
print "\nThe DNA $dna has $num_of_Cs C\'s in it!\n";
print "\nThe DNA $dna has $not_dna_base non-GATC in it!!\n\n";

exit;

###########################################
# Subroutines for Example 6-3
###########################################

sub countG {
	# return a count of the number of Gs in the argument $dna

	# initialize arguments and variables
	my($dna) = @_;

	my($count) = 0;

	# Use the fourth method of counting nucleotides in DNA, as shown in
	# Chapter Four, Motifs and Loops
	$count = ( $dna =~ tr/Gg//);

	return $count;
}

sub countA {
	# return a count of the number of Gs in the argument $dna

	# initialize arguments and variables
	my($dna) = @_;

	my($count) = 0;

	# Use the fourth method of counting nucleotides in DNA, as shown in
	# Chapter Four, Motifs and Loops
	$count = ( $dna =~ tr/Aa//);

	return $count;
}

sub countT {
	# return a count of the number of Gs in the argument $dna

	# initialize arguments and variables
	my($dna) = @_;

	my($count) = 0;

	# Use the fourth method of counting nucleotides in DNA, as shown in
	# Chapter Four, Motifs and Loops
	$count = ( $dna =~ tr/Tt//);

	return $count;
}

sub countC {
	# return a count of the number of Gs in the argument $dna

	# initialize arguments and variables
	my($dna) = @_;

	my($count) = 0;

	# Use the fourth method of counting nucleotides in DNA, as shown in
	# Chapter Four, Motifs and Loops
	$count = ( $dna =~ tr/Cc//);

	return $count;
}

sub countX {
	# return a count of the number of non-normal bases in the argument $dna

	# initialize arguments and variables
	my($dna) = @_;

	my($count) = 0;

	# Use the fourth method of counting nucleotides in DNA, as shown in
	# Chapter Four, Motifs and Loops
	$count = ( $dna =~ tr/bdefhijklmnopqrsuvwxzBDEFHIJKLMNOPQRSUVXZ//);

	return $count;
}
