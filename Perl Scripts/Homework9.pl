#!/usr/bin/perl
#Kion Smith
#kls160430
#CS 3377.0W3
sub q1
{	
	print "Question 1\n";
	print "---------------------------------------\n";
	#Setting x to the number
	$x = 100;
	print"(2*$x) + 5 = ";
	#doing the calculation
	print (2*$x+5);
	print "\n";
	print "---------------------------------------\n";
}
sub q2
{
	print "Question 2\n";
	print "---------------------------------------\n";
	#For upper bound needs to be 11 because the range is not inclusive of 10
	$max = 11;
	$min = -10;
	#Generate randmo nums
	$rand1 = int(rand($max -$min)) + $min;
	$rand2 = int(rand($max -$min)) + $min;
	#display the nums
	print "$rand1 , $rand2 \n";
	#Check to see if they are equal
	if($rand1 == $rand2)
	{
		print"Match Found\n";
	}
	else
	{
		print"Different Numbers\n";
	}
	print "---------------------------------------\n";
}

sub q3
{
	print "Question 3\n";
	print "---------------------------------------\n";
	#initalize scalars
	$x = 5;
	$y = 7;
	#display the sum of squares
	print "x's square is::";
	print ($x*$x);
	print "\nY's square is::";
	print ($y*$y);
	print "\nThe Sum of the Squares are ";
	print ($x*$x+$y*$y);
	print "\n";
	print "---------------------------------------\n";
}

sub q4
{
	print "Question 4\n";
	print "---------------------------------------\n";
	#initalize list(array)
	@x = (1,2,3);
	@y = (4,5,6);
	#Create the new array and index
	@z;
	$i =0;
	while($i<3)
	{
		#add the elements from x and y at i and put then in z
		push @z, @x[$i]+@y[$i];
		$i = $i+1; #increment the counter (i++)
	}
	#Print the array
	print "@z\n";
	print "---------------------------------------\n";
}

sub q5
{
	print "Question 5\n";
	print "---------------------------------------\n";
	#initalize hash
	%x =("1"=>"Kion","2"=>"John","3"=>"Max");
	#loop for my values and keys in the hash
	while(my($key,$value) = each %x)
	{
		#print my values and keys
		print "Key = $key,";
		print "Value = $value \n";
	}
	print "---------------------------------------\n";
}

sub q6
{
	print "Question 6\n";
	print "---------------------------------------\n";
	#get user input and stop when end of line
	print "Enter the first word\n";
	chomp(my $input1= <STDIN>);

	print "Enter the second word\n";
	chomp(my $input2= <STDIN>);

	print "Enter the third word\n";
	chomp(my $input3= <STDIN>);

	#check the inputs with each other
	if($input1 eq $input2)
	{
		if($input1 eq $input3)
		{
			print"All three words are a match\n";
		}
		else
		{
			print"Only the first and second word are a match\n";
		}

	}
	elsif($input1 eq $input3)
	{
		print"Only the first and third words are a match\n";
	}
	elsif($input2 eq $input3)
	{
		print"Only the second and third words are a match\n";
	}
	else
	{
		print"None of the words are a match\n";
	}
	print "---------------------------------------\n";
}

sub q7
{
	print "Question 7\n";
	print "---------------------------------------\n";
	#prompt user for file name
	print "Enter the file you want\n";
	chomp(my $userFile= <STDIN>);
	#open user file (appened mode)
	open(my $fh,'>>',"$userFile");
	$i=1;#counter
	#Loop for 100
	while($i!=101)
	{
		#random number 0-99(100 is not included)
		$rand = int(rand(100)); 
		#Write to the file
		print $fh "$rand\n";
		#increment the counter
		$i++;
	}
	print "---------------------------------------\n";
}

sub q8
{
	print "Question 8\n";
	print "---------------------------------------\n";
	sub question8
	{
		#For upper bound needs to be 11 because the range is not inclusive of 10
		$max = 11;
		$min = -10;
		#Generate randmo nums
		$rand1 = int(rand($max -$min)) + $min;
		$rand2 = int(rand($max -$min)) + $min;

		print "The first numbers ($rand1) square is ::";
		print $rand1*$rand1;
		print "\nThe second numbers ($rand2) square is ::";
		print $rand2*$rand2;
		print "\nThe Sum of the squares are ";
		print ($rand1*$rand1+$rand2*$rand2);
		print "\n";
	}

	question8();
}

q1();
q2();
q3();
q4();
q5();
q6();
q7();
q8();











