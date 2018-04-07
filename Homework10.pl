#!/usr/bin/perl
#Kion Smith
#kls160430
#CS 3377.0W3


$max = 201;
$min = 100;
$compNum = int(rand($max-$min))+$min;
$numOfGuess=1;
$allowedGuess=10;
sub endGame()
{
	print "Enter your name\n";
	chomp(my $userName= <STDIN>);
	open(my $fh,'>>',"report.txt");
	print $fh "$userName - $numOfGuess\n";
}

sub guessGame()
{
	if($numOfGuess < $allowedGuess)
	{

		print "Enter a number from 100-200\n";
		chomp(my $userNum= <STDIN>);
		if($userNum<100 || $userNum>200)
		{
			print "Invalid input\n";
			print "Try again\n";
			guessGame();
		}
		elsif($userNum == $compNum)
		{
			print "You guessed correctly\n";
			print "You guess correct in $numOfGuess\n";
			endGame();
		}
		elsif($userNum > $compNum)
		{
			print "High guess\n";
			print "Try again\n";
			$numOfGuess++;
			guessGame();
		}
		elsif($userNum < $compNum)
		{
			print "Low guess\n";
			print "Try again\n";
			$numOfGuess++;
			guessGame();
		}
		else
		{
			print "Invalid input";
			print "Try again\n";
			guessGame();
		}
	}
	else
	{
		print "You have guessed to many times\n"
	}
}
print "Guessing game!\n";
guessGame();



