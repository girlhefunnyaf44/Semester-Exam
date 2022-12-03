use v5.10.0;
use warnings;
use strict;
use diagnostics;

# Pseudo Code (Required)
#prompt user for first name
#prompt for last name
#prompt for street address
#prompt for city
#prompt for state
#prompt for zip code

#print "Hello, first last"
#print "Your address is:" on separate line
#print street on separate line
#print city on separate line
#print state on separate line
#print zip on separate line

package Scalars;
sub Zero {
    print "Please enter your first name: \n" ;
    my $first = <>;
    chomp $first;
    
    print "Please enter your last name: \n";
    my $last = <>;
    chomp $last;
    
    print "What is your street address? \n";
    my $street = <>;
    chomp $street;
    
    print "What city do you live in? \n";
    my $city = <>;
    chomp $city;
    
    print "What state do you live in? \n" ;
    my $state = <>;
    chomp $state;
    
    print "What is your zip code? \n" ;
    my $zip = <>;
    chomp $zip;
    
    print "\nHello $first $last\nYour address is: \n$street \n$city \n$state \n$zip \n";
    sleep(2);
}

Zero();

# Variable Assignment with Arithmetic Operators

#Prompt user for first name
#Use user's input for "first" variable
#Prompt user for last name
#Use user's input for "last" variable
#Concatenate first and last name together as the "name" variable

#Prompt user to enter a number between 10 and 20
#Use user's input for the "number1" variable
#Prompt user to enter a number between 1 and 9
#Use user's input for the "number2" variable

# Add number1 and number2 together and use the result as the "sum" variable
# Subtract number1 and number2 and use the result as the "diff" variable
# Multiply number1 and number2 together and use the result as the "product" variable
# Find the remainder of when number1 and number2 are divided and use the result as the "mod" variable

#Print "$name you entered $number1 and $number2" on a new line
#Print "The sum of $number1 and $number2 is $sum" on a new line
#Print "The difference of $number1 and $number2 is $diff" on a new line
#Print "The product of $number1 and $number2 is $product" on a new line
#Print "The modulus of $number1 and $number2 is $mod" on a new line

sub Init {
    print "Please enter your first name: \n";
    my $first = <>;
    chomp $first;
    
    print "Please enter your last name: \n";
    my $last = <>;
    chomp $last;
    
    my $name = "$first $last";
    
    print "Please enter a number between 10 and 20: \n";
    my $number1 = <>;
    chomp $number1;
    
    print "Please enter a number between 1 and 9: \n";
    my $number2 = <>;
    chomp $number2;
    
    my $sum = $number1 + $number2;
    my $diff = $number1 - $number2;
    my $product = $number1 * $number2;
    my $mod = $number1 % $number2;
    
    print "$name you entered $number1 and $number2 \n";
    print "The sum of $number1 and $number2 is $sum \n";
    print "The difference of $number1 and $number2 is $diff \n";
    print "The product of $number1 and $number2 is $product \n";
    print "The modulus of $number1 and $number2 is $mod \n";
    sleep (2);
}
Init();


# Repetition Structures

#Prompt consumer to list their given name
#Store consumer recommendation in the $firstname changing
#Prompt consumer to introduce their family name
#Store consumer recommendation in the $lastname changeable
#Prompt consumer for their test score
#Store consumer recommendation in the $num changing

#If the consumer score was degree or effective 19, display the meaning "$firstname $lastname, you are accepted to institution of higher education!"
#If the consumer score was inferior 19, display the meaning "$firstname $lastname, you are not accepted to seminary."

#Prompt consumer to list first number
#Store consumer recommendation in the $number1 changeable
#Prompt consumer to list second number
#Store consumer recommendation in the $number2 changeable

#If the second number is 0, display a meaning cautioning the consumer they filed a nothing number, and to come a non-nothing number for the second number.
#Exit the program

#Display a card and prompt the consumer to choose
#Store the consumer recommendation in the $answer changeable

#If the menu choice is not valid, exit the program
#If the user chose 1, add the two numbers and store the answer in the $sum variable; Display "$number1 + $number2 is $sum"
#If the user chose 2, multiply the two numbers and store the answer in the $prod variable; Display "$number1 * $number2 is $prod"
#If the user chose 3, compute the modulus of the two numbers and store the answer in the $mod variable; Display "$number1 % $number2 is $mod"


sub Structures {
    print "Please enter Your name\n";
    my $name = <>;
    chomp $name;
    
    print "Please enter a number\n";
    my $number1 = <>;
    chomp $number1;
    
    print "Please enter a second number\n";
    my $number2 = <>;
    chomp $number2;
    
    # Single Alternative if statement
    if($number2 == 0)
    {
    print "Please enter a non-zero number (you entered $number2)\n";
    print "Exiting this program.\n";
    exit 0;
    }
    
    print("Please make a selection using the menu below\n");
    print "1 - Add\n";
    print "2 - Multiply\n";
    print "3 - Complete Modulus of numbers\n";
    print "4 - Subtract\n";
    my $answer = <>;
    chomp $answer;
    
    print "$name You selected $answer\n";
    
    # Multiple Alternative if statement
    if($answer == 1)	
    {
      my $sum = $number1 + $number2;
      print("$number1 + $number2 is $sum\n");
    }
    elsif($answer == 2)
    {
      my $prod = $number1 * $number2;
      print "$number1 * $number2 is $prod\n";
    }
    elsif($answer == 3)
    {
      my $mod = $number1 % $number2;
      print "$number1 % $number2 is $mod\n";
    }
    elsif($answer == 4)
    {
      my $sub = $number1 - $number2;
      print "$number1 - $number2 is $sub\n";
    }
    else
    { 
    print "$answer is not a valid menu choice! Exit program.\n";
    exit 0;
    }
}
Structures();
# Loops and Arrays

# Initialize username array
# Prompt consumer for given name and store recommendation in username index 0
# Prompt consumer for family name and store recommendation in username index 1
# Prompt consumer for the first number and store recommendation in number1 changing
# Prompt consumer for the second number and store recommendation in number2 changeable
# If the consumer enters nothing as their second number, wait in loop just before they introduce a non-nothing number

# Display the consumer's name and practice they filed
# Ask the consumer by virtue of what regularly they be going to run the program (if they select 0 program will exit)

# Display a card and prompt a consumer to select some four selections and store the recommendation in the answer changing
# If the consumer does not display a genuine card choice, request ruling class to retry, and loop back to the card choice
# Display the consumer's name and their card choice

# If the consumer inputs cuisine choice 1, increase number1 and number2 and set the answer in the total changeable, therefore display the meaning "$number1 + $number2 = $total"
# If the consumer inputs cuisine choice 2, reproduce number1 and number2 and set the answer in the urge changing, therefore display the communication "$number1 * $number2 = $incite"
# If the consumer inputs cuisine choice 3, separate number1 and number2 and set the residue in the modern changing, therefore display the communication "$number1 % $number2 = $modern"
# If the consumer inputs cuisine choice 4, exit the program

# If the consumer inputs any more individual for u.s. city count, prompt the consumer to recommendation another cuisine choice just before the number of loops have happened achieved


sub Arrays {
    @username=("firstname", "lastname");
    
    print "Please enter your first name: ";
    my $username[0] = <>;
    chomp $username[0];
    
    print "Please enter your last name: ";
    my $username[1] = <>;
    chomp $username[1];
    
    print "Please enter a number\n";
    my $number1 = <>;
    chomp $number1;
    
    print "Please enter a second number\n";
    my $number2 = <>;
    chomp $number2;
    
    while ( $number2 == 0 )
    {
        print "You entered $number2\nPlease enter a non-zero number\n";
        $number2 = <>;
        chomp $number2;
    }
    
    print "$username[0] $username[1], you entered $number1 and $number2\n";
    
    print "How many times do you want to run your program?\n";
    $loop_total = <>;
    chomp $loop_total;
    
    for ( $loop_count=1; $loop_count <= $loop_total; $loop_count++ )
    {
        print("\nDisplaying $loop_count of $loop_total loops \n\n");
        print("Please make a selection using the menu below\n");
        print "1 - Add \n";
        print "2 - Multiply \n";
        print "3 - Modulus \n";
        print "4 - Exit \n";
        $answer = <>;
        chomp $answer;
    
        print "$username[0] $username[1], you selected $answer as your menu choice\n\n";
    
        if ( $answer == 1 )
        {
            $sum = $number1 + $number2;
            print "$number1 + $number2 is $sum";
        }
        elsif ( $answer == 2 )
        {
            $prod = $number1 * $number2;
            print "$number1 * $number2 is $prod";
        }
        elsif ( $answer == 3 )
        {
            $mod = $number1 % $number2;
            print "$number1 % $number2 is $mod";
        }
        elsif ( $answer == 4 )
        {
            print "Exiting program\n";
            exit 0;
        }
        else
        {
            print "$answer is not a valid menu choice! Please retry.";
        }
        print ("\n");
    }
}
Arrays();
