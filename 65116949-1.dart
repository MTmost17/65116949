import 'dart:math';

String calculateTriangleArea(double sideA, double sideB, double sideC) {
 
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return "Error: All side lengths must be positive numbers.";
  }
  
  if ((sideA + sideB <= sideC) || (sideA + sideC <= sideB) || (sideB + sideC <= sideA)) {
    return "Error: The given sides do not form a triangle.";
  }
  
  double semiPerimeter = (sideA + sideB + sideC) / 2;
  
  double area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));
  
  return area.toString();
}

void main() {
  double sideA = 1;
  double sideB = 1;
  double sideC = 1;
  
  String result = calculateTriangleArea(sideA, sideB, sideC);
  print("The area of the triangle is: $result");
}



void main() {
  // Step 1: Initialize Variables
  int number = 15;
  
  // Step 2: Check Even or Odd
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
  
  // Step 3: Print Numbers from 1 to 5
  for (int i = 1; i <= 5; i++) {
    print('Number: $i');
  }
}



void main() {
  int n = 20; 

  if (n <= 0) {
    print("Please enter a valid positive integer.");
    return;
  }

  int sum = 0;
  for (int i = 1; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  print("The sum of all multiples of 3 and 5 below $n is: $sum");
}

int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  int n = 5; 

  if (n < 0) {
    print('Please enter a valid positive integer.');
    return;
  }

  int result = factorial(n);

  print('The factorial of $n is: $result');
}
