#!/usr/bin/perl -w

# EXAMPLE
# Count Number
# ./ssngenerator "PREFIX" 110484 "" | wc -l
# Generate Passworf file
# ./ssngenerator "ssn:" 110484 "" > passwords.list
# Generate all Social Security numbers for birthdate
# ./ssngenerator "" 110484 ""

sub printusage( )
{
    print "Cannot process input.\n";
    print "USAGE:\n";
    print "ssngenerator <birthdate>\n";
    print "<birthdate> = DDMMYY\n";
}

$number_args = $#ARGV + 1;
if ($number_args != 1) {
	printusage();
	exit;
}

$birthdate=$ARGV[0];

$birthdatelength = length $birthdate;

if ( $birthdatelength != 6 )
{
	printusage( );
	exit;
}


@chars = split("", $birthdate);

$sumbirtdate = $chars[0]*5 + $chars[1]*8 + $chars[2]*4 + $chars[3]*2 + $chars[4]*1 + $chars[5]*6;

@sequence = (100..999);

foreach(@sequence)
{

	$currentsequence = "" . "$_";
	@currentsequencechars = split("", $currentsequence);

	$sum = $sumbirtdate + $currentsequencechars[0]*3 + $currentsequencechars[1]*7 + $currentsequencechars[2]*9;

	$remainder = $sum % 11;

	if ($remainder == 10 )
	{
		next;
	}

	$validsocialsecuritynumber =  "$currentsequence$remainder$birthdate\n";

	print "$validsocialsecuritynumber";
}
