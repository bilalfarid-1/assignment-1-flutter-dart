// Task 2: Dart Basics (Input, Loops, Conditionals & Lists)
// Write a Dart console program that:
import 'dart:io';

void main() {
  // 1. Takes input from the user for their name and age.
  print("Enter your name: ");
  String name = stdin.readLineSync()!;
  // print("Enter you age: ");
  int age = 20;
  //int.parse(stdin.readLineSync()!);
  print('name: $name');
  print('age: $age');

  // If the age is less than 18, print:
  // "Sorry [Name], you are not eligible to register." and stop execution.
  if (age < 18) {
    print('Sorry $name, you are not eligible to register.');
  } //end of if
  // Otherwise, continue.
  else {
    print('How many numbers you wanna enter: ');
    int count = int.parse(stdin.readLineSync()!);
    // 2. Ask the user to enter N numbers (the program should first ask how many numbers
    // the user wants to enter).

    // 3. Store all numbers in a list and calculate:
    List<int> numbers = [];
    for (int i = 0; i < count; i++) {
      print('Enter ($i+1) number: ');
      int userInput = int.parse(stdin.readLineSync()!);
      numbers.add(userInput);
    }
    print(numbers);

    // The sum of even numbers.
    int evenNum = 0;
    for (int num in numbers) {
      if (num % 2 == 0) {
        print('even $num');
        evenNum += num;
      }
    }
    print('Sum of Even Numbers: $evenNum');
    //   // The sum of odd numbers.
    int oddNum = 0;
    for (int num in numbers) {
      if (num % 2 != 0) {
        print('even $num');
        oddNum += num;
      }
    }
    print('Sum of Odd Numbers: $oddNum');

    //The largest number entered.

    int largeNum = 0;
    print(numbers);
    for (int item in numbers) {
      print(item);
      if (largeNum < item) {
        largeNum = item;
        print('large number changed to $largeNum');
      }
    }

    print('largest number is: $largeNum');

    //   // The smallest number entered.

    int smallNum = numbers[0];
    print(smallNum);
    print(numbers);
    for (int item in numbers) {
      print(item);
      if (smallNum >= item) {
        smallNum = item;
        print('small number changed to $smallNum');
      }
    }

    print('smallest number is: $smallNum');

    //   // 4. Print the results clearly.
  } //end of else
} //end of main
