import 'dart:io';

void main() {
  // Taking input from the user
  print('Enter the value of n: ');
  int userInput = int.parse(stdin.readLineSync()!);

  if (userInput == null || userInput <= 0) {
    print('Please enter a valid positive integer.');
    return;
  }

  // Printing the number pyramid pattern
  for (int i = 1; i <= userInput; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$j '); // Use stdout.write instead of print
    }
    print(''); // This will create a new line after each row
  }
}
