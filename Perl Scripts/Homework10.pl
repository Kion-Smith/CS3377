#!/usr/bin/perl
#Kion Smith
#kls160430
#CS 3377.0W3

#the upper and lower boudnds
$max = 201;
$min = 100;
#random computer number
$compNum = int(rand($max-$min))+$min;
#set the number of guess to one just in case some one guess on the first try
$numOfGuess=1;
#can only guess 10 times
$allowedGuess=10;

#end game function to write to report file
sub endGame()
{
	#get users name
	print "Enter your name\n";
	chomp(my $userName= <STDIN>);

	#open and print score to file
	open(my $fh,'>>',"report.txt");
	print $fh "$userName - $numOfGuess\n";
}

#game logic/loop
sub guessGame()
{
	#Check to make sure that # of guess is less than the allowed amount
	if($numOfGuess < $allowedGuess)
	{

		#Prompt for user num (100-200)
		print "Enter a number from 100-200\n";
		chomp(my $userNum= <STDIN>);

		#make sure that the user num is in range
		if($userNum<100 || $userNum>200)
		{
			#if not in range loop back
			print "Invalid input\n";
			print "Try again\n";
			guessGame();
		}
		elsif($userNum == $compNum) 
		{
			#if guessed correctly then go to end game
			print "You guessed correctly\n";
			print "You guess correct in $numOfGuess\n";
			endGame();
		}
		elsif($userNum > $compNum)
		{
			#If guess is too high then loop again
			print "High guess\n";
			print "Try again\n";
			$numOfGuess++;
			guessGame();
		}
		elsif($userNum < $compNum)
		{
			#If guess is too low then loop again
			print "Low guess\n";
			print "Try again\n";
			$numOfGuess++;
			guessGame();
		}
		else
		{
			#If not a number then loop again
			print "Invalid input";
			print "Try again\n";
			guessGame();
		}
	}
	else
	{
		#if the limit has been reached for guess
		print "You have guessed to many times\n"
	}
}
#Start the game
print "Guessing game!\n";
guessGame();



