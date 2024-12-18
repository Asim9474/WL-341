

import 'dart:io';
import 'dart:math';

/// Print "Hello I am John Doe" with single and double quotes   //////////

/*
void main(){
  print("Hello, I am John Doe");   // Using double quotes
  print('Hello, I am John Doe');   // Using single quotes

}*/

//// Print my name   //////////

/*void main(){
  print("My name is Suman Bhunia");

}*/

 /////////  Declare type of int value is 7    ///////////

/*void main(){
  int no =7;
  print('The integer number value is $no ');   // Using single quotes

}*/


/////////  Find simple interest   ///////////

/*  void main() {
    // Take principal input
    print("Enter the principal amount:");
    double p = double.parse(stdin.readLineSync()!);

    // Take rate input
    print("Enter the rate of interest:");
    double r = double.parse(stdin.readLineSync()!);

    // Take time input
    print("Enter the time in years:");
    double t = double.parse(stdin.readLineSync()!);

    // Calculate simple interest
    double simpleInterest = (p*r*t) / 100;

    // Display the result
    print("Simple Interest is:${simpleInterest}");
  }*/


/////////  Square of a number  ///////////

 /*void main() {
    // Take input
    print("Enter a number:");
    double a = double.parse(stdin.readLineSync()!);

    // Calculate square of the number
    double square = a*a;

    // Display the result
    print("The square value of the number is: $square");
  }

*/


/////////  Print name of the user by taken user input   ///////////

  /*void main() {
    // Take  input
    print("Enter your first name:");
    String name =stdin.readLineSync()!;

    // Take  input
    print("Enter your last name:");
    String lastName =stdin.readLineSync()!;

    // Display the Full name
    print("Your Name is:$name $lastName");
  }*/



////////  Find Quotient and Reminder of two numbers   ///////////

/*
 void main() {
    // Take 1st input
    print("Enter 1st integer number:");
    int a = int.parse(stdin.readLineSync()!);

    // Take 2nd input
    print("Enter 2nd integer number:");
    int b = int.parse(stdin.readLineSync()!);

    // Calculate Quotient
    double quotient = a/b;

    // Calculate Remainder
    int remainder = a%b;


    // Display the result
    print("Quotient is:$quotient");
    print("Remainder is:$remainder");
  }*/


////////  To Swap two numbers   ///////////


/*void main() {
  // Take first number input
  print("Enter the first number:");
  int num1 = int.parse(stdin.readLineSync()!);

  // Take second number input
  print("Enter the second number:");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Before swapping: 1st number = $num1, 2nd number = $num2");

  // Swap the numbers
  int temp = num1;
  num1 = num2;
  num2 = temp;

  print("After swapping: 1st number = $num1, 2nd number = $num2");
}*/


////// Program to Remove whitespace from a string //////////

/*
void main() {
  // Take input string from user
  print("Enter a sentence:");
  String input = stdin.readLineSync()!;

  // Remove all whitespace
  String result = input.split(' ').join('');

  print("The sentence without whitespace: $result");
}*/


////////    program to convert String to integer //////////

/*
void main() {
  // Take input string from user
  print("Enter numbers as a string:");
  String input = stdin.readLineSync()!;

  // Convert string to integer
  int? number = int.tryParse(input);

  if (number != null) {
    print("The integer value is: $number");
  } else {
    print("Invalid input ! Please enter integer number");
  }
}*/


///////// Program to calculate the split amount of restaurant bill among the friends ////


/*
void main(){
  // Take input the bill amount
  print("Enter the bill amount :");
  double amount = double.parse(stdin.readLineSync()!);

  // Take input  the numbers of friends
  print("How many friends are you:");
  int input = int.parse(stdin.readLineSync()!);

  // calculate the split amount
  double splitAmount = amount / input;

  print("The split amount for each friend is:$splitAmount");

}*/


////////   Program to calculate time in minutes, where the traveling distance and Speed is given    ///////////

/*
void main(){
  // Take input traveling distance
  print("Enter the traveling distance in km :");
  double distance = double.parse(stdin.readLineSync()!);

  // Take input Traveling Speed
  print("Enter the traveling Speed in kms/hr :");
  double speed = double.parse(stdin.readLineSync()!);

  // calculate Time to reach the Distination
  double time = distance / speed;

  print("The Time need to reach the distination is:$time minutes");

}*/



////////  Check Odd and Even number: done in Assignment2_level2  ///////

///////  Check a Character is vowel or consonant :  done in Assignment2_level2   ///////


/////// Check a number is positive, negative or Zero   //////////

/*
void main() {
  // Take input number from user
  print("Enter a number:");
  double number = double.parse(stdin.readLineSync()!);

  // Check if the number is positive, negative, or zero
  if (number > 0) {
    print("The number is positive.");
  } else if (number < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
}*/


///////// Print my name hundred times   ////////////

/*
void main(){

  for(int i=1; i<101; i++) {
    print("$i: Suman Bhunia  ");
  }
}
*/


/////////    Sum of natural numbers  /////////////

/*
void main() {
  // Take input from user
  print("Enter a positive integer:");
  int n = int.parse(stdin.readLineSync()!);

  // Calculate the sum of natural numbers
  int sum = (n * (n + 1)) ~/ 2;

  print("The sum of the first $n natural numbers is: $n x ($n + 1) / 2 = $sum");
}*/


//////////   Multiplication Table of 5   /////////

/*
void main(){

  for(int i=0; i<=10; i++){
    int mul= 5 * i;
    print( " 5x$i= $mul");
  }
}*/


////////   Multiplication Table of 1-9   /////////

/*
void main() {
  for (int j = 1; j <= 9; j++) {
    print('Multiplication table of $j:');
  for (int i = 0; i <= 10; i++) {
    print(" $j x $i = ${i * j}");
  }
}
}*/


//////////  Simple calculator : done in Assignment2_level2  //////////


/////   print 1 to 100 but not 41   /////////

/*
void main() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41) {
      continue; // Skip number 41
    }
    print(i);
  }
}*/


/////////  print own name using function   //////////

/*void main(){
  printName();
}*/

/*
void printName(){
  print(' Suman Bhunia ');
}*/


//////////    Print even numbers between intervals using function  /////////

/*void main() {
  // Take input from user
  print("Enter start number:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter end number:");
  int b = int.parse(stdin.readLineSync()!);

  printEvenNumbers(a, b);
}*/

/*
void printEvenNumbers(int start, int end) {
  print("Even numbers between $start and $end is:");
  if (start < end) {
        for (int i = start; i <= end; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  } else {
    for (int i = start; i >= end; i--) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  }
}*/




/////////   Program to generate random passwords    ////////

/*String generatePassword(int length) {
  const String uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const String lowercase = "abcdefghijklmnopqrstuvwxyz";
  const String numbers = "0123456789";
  const String symbols = "@#\$%&*";

  final String allChars = uppercase + lowercase + numbers + symbols;
  Random random = Random.secure();

  String password = List.generate(length, (index) => allChars[random.nextInt(allChars.length)]).join();

  // Ensuring password includes at least one of each type
  password = password.replaceRange(0, 1, uppercase[random.nextInt(uppercase.length)]);
  password = password.replaceRange(1, 2, lowercase[random.nextInt(lowercase.length)]);
  password = password.replaceRange(2, 3, numbers[random.nextInt(numbers.length)]);
  password = password.replaceRange(3, 4, symbols[random.nextInt(symbols.length)]);

  return password;
}*/

/*void main() {
  int passwordLength = 8; // Set the desired length for the password
  String password = generatePassword(passwordLength);
  print("Generated Password: $password");
}*/


////////// Area of circle : done in Assignment2_level2  //////


////////// Reverve String using function  ///////////

/*String reverseString(String input) {
  return input.split('').reversed.join('');
}*/

/*
void main() {
  print("Write a word/sentence:");
  String original = stdin.readLineSync()!;
  String reversed = reverseString(original);
  print("Original: $original");
  print("Reversed: $reversed");
}
*/


//////////  calculate the power of a number  ////////

/*int power(int base, int exponent) {
  return pow(base, exponent).toInt();
}*/

/*
void main() {

  print("Enter the base number:");
  int base = int.parse(stdin.readLineSync()!);
  print("Enter the exponent number:");
  int exponent= int.parse(stdin.readLineSync()!);

  int result = power(base, exponent);
  print("$exponent to the power of $base is $result");
}*/


/////////   Add function with two arguments   ////////////
/*
 num add(num a, num b) {
     num result = a+b;
  return result;
}

void main(){
print("Enter first number:");
num p = num.parse(stdin.readLineSync()!);
print("Enter second number:");
num q= num.parse(stdin.readLineSync()!);

num sum = add(p, q);
print("Addition of $p and $q is $sum");
}*/



/////////  Function with arguments, return largest number   /////////

/*num maxNum(num a, num b, num c) {
  return a > b ? (a > c ? a : c) : (b > c ? b : c);
}*/

/*void main(){
print("Enter first number:");
num p = num.parse(stdin.readLineSync()!);
print("Enter second number:");
num q = num.parse(stdin.readLineSync()!);
print("Enter third number:");
num r = num.parse(stdin.readLineSync()!);
num largestNumber = maxNum(p, q ,r);
print("Largest number of $p $q and $r is $largestNumber");
}*/


/////////   Function to check Even number   ////////

/*bool isEven(int a) {
  return a % 2 == 0 ;
}*/

/*
void main() {
  print("Enter a whole number:");
  int p = int.parse(stdin.readLineSync()!);
  if (isEven(p)) {
    print("$p is Even Number");
  } else {
    print("$p is Odd Number");
  }
}*/



/////////     Function to calculate Area of rectangle   ////////////

/*double calculateArea({double a = 1, double b = 1}) {
  return  a * b;
}*/

/*void main() {
  //default area values of rectangle
  print("Area with default values: ${calculateArea()}");

  // Using custom values for base and height
  print("Enter the length of the Rectangle:");
  double length = double.parse(stdin.readLineSync()!);
  print("Enter the width of the Rectangle:");
  double width= double.parse(stdin.readLineSync()!);
  double  area = calculateArea(a: length, b: width);
  print("Area of the Rectangle with Length = $length and Width = $width is $area");
}*/


////////  List of names using List   //////////

/*void main() {
  List<String> names = ["Anil", "Sabita", "Ankit", "sukumar"];
  print("List of Names are :");
  print (names);
}*/


///////////  Print set of fruits uing loop   ///////////

/*void main() {
  Set<String> fruits = {"Apple", "Banana", "Orange", "Grapes"};

  for (String fruit in fruits) {
    print(fruit);
  }
}*/


////////  program to read a list of expenses with their amounts and print the total amount:  /////////

void main() {
  // List of expenses with amounts
  Map<String, double>> expenses = {
    print('Enter 5 expense details with price')
  for(int i=0; i>5; i++){
    {  key = (stdin.readLineSync()!) : double value = double.parse(stdin.readLineSync()!};
    /*{"Groceries": 150.50},
    {"Rent": 1200.00},
    {"Utilities": 100.75},
    {"Transportation": 50.25},
    {"Entertainment": 75.00},*/
  {;

 /* double totalAmount = 0;

  // Calculate total amount
  for (var expense in expenses) {
    expense.forEach((key, value) {
      print("$key: \$${value}");
      totalAmount += value;
    });
  }*/

  //print("\nTotal Amount: \$${totalAmount}");
  print(expenses);

}