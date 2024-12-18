

//import 'dart:io';
//import 'dart:math';

////// Program  to printout the message that tell how many years they have to be 100 years old

/*oid main(){
  print ("Enter your name:");
  String name =stdin.readLineSync()??"";
  print ("Enter your age:");
  int age =int.parse(stdin.readLineSync()?? '0');

  int until100years = 100 - age;

  print (" $name, you have $until100years until you turn 100 years old");

}*/



/// Rock paper scissors Game


/*void main(){
  var choice=['rock', 'paper', 'scissor'];
  var random = Random();

  print(" player1 , enter your choice (rock, paper, scissor):");

  String player1Choice= stdin.readLineSync()!.toLowerCase();

  if(!choice.contains(player1Choice)){
    print("invild choice. Please run the game again and enter rock, paper or scissors.");
    return;
  }

  String player2Choice=choice[random.nextInt(choice.length)];

  print("computer choice: $player2Choice");

  //// Determind the winer
  if (player1Choice==player2Choice){
    print("It's tie");
  } else if((player1Choice=='rock'&&player2Choice=='scissor')||(player1Choice=='paper'&&player2Choice=='rock')||(player1Choice=='scissor'&&player2Choice=='paper')){
    print("Player1 win");
  } else {
    print("computer win");
  }
  }*/

/// divisors of a number

/*
void main (){
  print ( "enter a number");
   int number = int.parse (stdin.readLineSync()!);
   print("Divisors of  $number:");
   List<int>divisors=[];
   for (int i=1;i<=number;i++){
     if (number % i==0) {
       divisors.add(i);
     }
     }
   print (divisors);
   }
*/

/// find common numbers from the two list

/*
void main() {
  // Input two lists of numbers
  stdout.write('Enter the list of numbers ( separated by Comma): ');
  List<int> list1 = stdin.readLineSync()!.split(',').map((e) => int.parse(e.trim())).toList();

  stdout.write('Enter the second list of numbers (comma separated): ');
  List<int> list2 = stdin.readLineSync()!
      .split(',')
      .map((e) => int.parse(e.trim()))
      .toList();

  // Find common numbers without duplicates
  Set<int> commonNumbers = list1.toSet().intersection(list2.toSet());

  // Print the result
  print('Common numbers without duplicates: ${commonNumbers.toList()}');
}
*/


/////  make even number list from a list of numbers

/*void main(){

  stdout.write('Enter the list of numbers ( separated by Comma): ');
  List<int> numbers = stdin.readLineSync()!.split(',').map((e) => int.parse(e.trim())).toList();

  // Filter even numbers from the number list
  List<int> evenNumbers = numbers.where((num)=>num%2==0).toList();

  // Print the result
  print('even numbers: ${evenNumbers.toList()}');

}*/


///     make Odd number list from a list of numbers


/*
void main(){

  stdout.write('Enter the first list of numbers (comma separated): ');
  List<int> numbers = stdin.readLineSync()!.split(',').map((e) => int.parse(e.trim())).toList();

  // Filter odd numbers from the number list
  List<int> oddNumbers = numbers.where((num)=>num%2==1).toList();

  // Print the result
  print('odd numbers: ${oddNumbers.toList()}');

}*/


/////  Square root of a number

/*void main() {
  // Input a number
  print('Enter a number to find its square root:');
  double number = double.parse(stdin.readLineSync()!);

  // Check for negative input
  if (number < 0) {
    print('Error: The square root of a negative number is not defined.');
  } else {
    // Calculate square root
    double squareRoot = sqrt(number);

    // Output the result
    print('The square root of $number is: ${squareRoot.toStringAsFixed(3)}');
  }
}*/


///////   Multiplication table of a given number

/*
void main() {
  // Input a number
  print('Enter a number to generate its multiplication table:');
  int number = int.parse(stdin.readLineSync()!);

  // Generate and print the multiplication table
  print('Multiplication Table for $number:');
  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print('$number x $i = $result');
  }
}*/


///////// Function to calculate the area of a circle


/*
double calculateArea(double radius) {
  return pi * radius * radius;
}
*/

/*
void main() {
  // Input radius
  print('Enter the radius of the circle:');
  double radius = double.parse(stdin.readLineSync()!);

  // Calculate the area
  double area = calculateArea(radius);

  // Output the result
  print('The area of the circle with radius $radius is: ${area.toStringAsFixed(2)}');
}
*/



///////  Find the Square of a number

/*
void main() {
  // Prompt user for input
  print('Enter a number to find its square:');

  // Read and parse the input
  double number = double.parse(stdin.readLineSync()!);

  // Calculate the square
  double square = number * number;

  // Output the result
  print('The square of $number is: ${square.toStringAsFixed(2)}');
}*/


////// Check whether the given year is Leap year or not

/*
void main() {
  // Prompt user for input
  print('Enter a year:');
  int year = int.parse(stdin.readLineSync()!);

  // Check if the year is a leap year
  bool isLeapYear = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

  // Output the result
  if (isLeapYear) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }
}*/


//////  print back to the user same string in backwards order


/*
void main() {
  // Prompt user for input
  print('Enter a long string containing multiple words:');
  String? input = stdin.readLineSync();

  // Check if input is valid
  if (input != null) {
    // Split the input into words and reverse the order
    List<String> words = input.split(' ');
    words = words.reversed.toList();

    // Join the reversed words back into a string
    String reversedString = words.join(' ');

    // Output the result
    print('The string with words in reverse order is:');
    print(reversedString);
  } else {
    print('No input provided.');
  }
}*/


/////////  Find the difference between the square of the sum and the sum of the squares of the first N
///////// natural number


/*
void main() {
  // Prompt user for input
  print('Enter a natural number N:');
  int n = int.parse(stdin.readLineSync()!);

  // Calculate the sum of the first N natural numbers
  int sum = (n * (n + 1)) ~/ 2;

  // Calculate the square of the sum
  int squareOfSum = sum * sum;

  // Calculate the sum of the squares of the first N natural numbers
  int sumOfSquares = (n * (n + 1) * (2 * n + 1)) ~/ 6;

  // Calculate the difference
  int difference = squareOfSum - sumOfSquares;

  // Output the result
  print('The difference between the square of the sum and the sum of the squares of the first $n natural numbers is: $difference');
}*/



/////// The program will guess the number, which is in my head.
///////  I have to say whether it is too high, too low or my number during the guess.


/*void guessNumber() {
  int low = 0;
  int high = 100;
  int attempts = 0;

  print("Think of a number between 0 and 100.");

  while (true) {
    int guess = ((low + high) / 2).floor();
    attempts++;
    print("My guess is: $guess");

    print("Is it 'too high', 'too low', or 'correct'?");
    String? feedback = stdin.readLineSync()?.toLowerCase();

    if (feedback == "too high") {
      high = guess - 1;
    } else if (feedback == "too low") {
      low = guess + 1;
    } else if (feedback == "correct") {
      print("Yay! I guessed your number in $attempts attempts.");
      break;
    } else {
      print("Invalid input. Please enter 'too high', 'too low', or 'correct'.");
    }
  }
}*/

/*void main() {
  guessNumber();
}*/



/////////  Calculate simple interest    /////////////////////


/*
void main() {
  // Input: Principal amount
  stdout.write("Enter the principal amount: ");
  double principal = double.parse(stdin.readLineSync()!);

  // Input: Rate of interest
  stdout.write("Enter the rate of interest: ");
  double rate = double.parse(stdin.readLineSync()!);

  // Input: Time period in years
  stdout.write("Enter the time period (in years): ");
  double time = double.parse(stdin.readLineSync()!);

  // Calculate Simple Interest
  double simpleInterest = (principal * rate * time) / 100;

  // Output the result
  print("The Simple Interest is:Rs ${simpleInterest.toStringAsFixed(2)}");
}*/



///////////   Program to find BMI      ///////////////////////


/*
void main() {
  // Input: Weight in kilograms
  stdout.write("Enter your weight in kilograms: ");
  double weight = double.parse(stdin.readLineSync()!);

  // Input: Height in meters
  stdout.write("Enter your height in meters: ");
  double height = double.parse(stdin.readLineSync()!);

  // Calculate BMI
  double bmi = weight / (height * height);

  // Output: the result
  print("Your BMI is: ${bmi.toStringAsFixed(2)}");

  // Determine the BMI category
  if (bmi < 18.5) {
    print("You are underweight.");
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print("You have a normal weight.");
  } else if (bmi >= 25 && bmi < 29.9) {
    print("You are overweight.");
  } else {
    print("You are obese.");
  }
}*/


//////////    Program to remove all whitespaces from string     /////////////////

/*
void main() {
  // Input:  enters a string
  print("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;

  // Remove all whitespaces
  String result = sentence.replaceAll(' ', '');

  // Output the result
  print("The sentence without whitespaces: $result");
}*/


///////////    Program to calculate split amount of bill   /////////////

/*
void main() {
  // Input: Total bill amount
  print("Enter the total bill amount: ");
  double billAmount = double.parse(stdin.readLineSync()!);

  // Input: Tip percentage
  print("Enter the tip amount: ");
  double tipAmount = double.parse(stdin.readLineSync()!);

  // Input: Number of people to split the bill
  print("Enter the number of people: ");
  int people = int.parse(stdin.readLineSync()!);

  // Calculate tip amount
  //double tipAmount = (billAmount * tipPercentage) / 100;

  // Calculate total amount (bill + tip)
  double totalAmount = billAmount + tipAmount;

  // Calculate split amount for each person
  double splitAmount = totalAmount / people;

  // Output the result
  print("Tip amount:Rs ${tipAmount.toStringAsFixed(2)}");
  print("Total amount (with tip):Rs ${totalAmount.toStringAsFixed(2)}");
  print("Each person should pay:Rs ${splitAmount.toStringAsFixed(2)}");
}*/



///////////    Program to check whether a character is a vowel or consonant  ///////////////



/*void main() {
  // Input: User enters a character
  print("Enter a character: ");
  String input = stdin.readLineSync()!;

  // Check if input is valid (only one character)
  if (input == null || input.length != 1) {
    print("Please enter a single character.");
    return;
  }

  // Convert character to lowercase for comparison
  String character = input.toLowerCase();

  // Define vowels
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  // Check if the character is a letter
  if (RegExp(r'^[a-zA-Z]$').hasMatch(character)) {
    // Check if the character is a vowel or consonant
    if (vowels.contains(character)) {
      print("$character is a vowel.");
    } else {
      print("$character is a consonant.");
    }
  } else {
    print("Please enter a valid alphabetical character.");
  }
}*/



/////////////   Program to add your 7 friends name. Find a name that start with alphabet "A"     /////////

/*
void main() {
  // List to store friends' names
  List<String> friends = [];

  // Input: Ask user to enter names
  print("Enter the names of your 7 friends:");

  for (int i = 0; i < 7; i++) {
    stdout.write("Friend ${i + 1}: ");
    String? name = stdin.readLineSync();
    if (name != null && name.isNotEmpty) {
      friends.add(name);
    } else {
      print("Please enter a valid name.");
      i--; // decrement the counter to ensure 7 valid names are entered
    }
  }

  // Find names that start with the letter 'A'
  List<String> namesStartingWithA = friends.where((name) => (name.startsWith('a')) || (name.startsWith('A'))).toList();

  // Output the results
  if (namesStartingWithA.isNotEmpty) {
    print("Names that start with 'A': ${namesStartingWithA.join(', ')}");
  } else {
    print("No names found that start with 'A'.");
  }
}*/



///////////    Program to store names and phone. Find name keys that have length of 4.   /////////////


/*
void main() {
  // Create a map to store names and phone numbers
  Map<String, String> phoneBook = {};

  // Input: Ask the user to enter names and phone numbers
  print("Enter names and phone numbers (type 'end' to finish):");

  while (true) {
    stdout.write("Enter name: ");
    String? name = stdin.readLineSync();

    // Exit condition
    if (name?.toLowerCase() == 'end') {
      break;
    }

    stdout.write("Enter phone number: ");
    String? phoneNumber = stdin.readLineSync();

    if (name != null && phoneNumber != null) {
      phoneBook[name] = phoneNumber;
      print("Added: $name -> $phoneNumber");
    } else {
      print("Please enter valid name and phone number.");
    }
  }

  // Find keys with a length of 4
  List<String> keysWithLength4 = phoneBook.keys.where((key) => key.length == 4).toList();

  // Output the results
  if (keysWithLength4.isNotEmpty) {
    print("Keys with length of 4: ${keysWithLength4.join(', ')}");
  } else {
    print("No keys found with a length of 4.");
  }
}*/



///////////  Basic to-do application program. The program allows users to add, remove and view their tasks interactively   /////


/*
void main() {
  List<String> tasks = [];
  while (true) {
    print("\n--- To-Do Application ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Choose an option (1-4): ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter the task: ");
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print("Task added: '$task'");
        } else {
          print("Task cannot be empty.");
        }
        break;

      case '2':
        stdout.write("Enter the task number to remove: ");
        String? indexInput = stdin.readLineSync();
        if (indexInput != null && indexInput.isNotEmpty) {
          int index = int.parse(indexInput) - 1; // Convert to 0-based index
          if (index >= 0 && index < tasks.length) {
            String removedTask = tasks.removeAt(index);
            print("Task removed: '$removedTask'");
          } else {
            print("Invalid task number.");
          }
        }
        break;

      case '3':
        print("\n--- Current Tasks ---");
        if (tasks.isEmpty) {
          print("No tasks available.");
        } else {
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case '4':
        print("Exiting the application.");
        return;

      default:
        print("Invalid choice. Please try again.");
    }
  }
}*/


//////////  A function name generateRandom() that randomly returns 100 or null.
// Also, assign a return value of the function to a variable named status that cannot be null.
// Give status value of zero, if generateRandom() function returns null.


/*int generateRandom() {
  // Randomly return 100 or null
  Random random = Random();
  return random.nextBool() ? 100 : null;  // Return 100 or null randomly
}*/

/*
void main() {
  // Assign the return value to a non-nullable variable named status
  int status = generateRandom() ?? 0;  // If generateRandom() returns null, assign 0

  // Output the result
  print("Status: $status");
}*/



import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Security System",
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold();
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text("Esp Security"),
      //   centerTitle: true,
      // ),
  //  );
  }
}