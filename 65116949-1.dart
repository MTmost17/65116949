double mySqrt(double x) {
  if (x == 0) return 0;
  double guess = x / 2;
  double epsilon = 0.00001; // ค่าเล็กน้อยสำหรับความแม่นยำ
  while ((guess * guess - x).abs() > epsilon) {
    guess = (guess + x / guess) / 2;
  }
  return guess;
}

String calculateTriangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return "Error: All side lengths must be positive numbers.";
  }
  
  if ((sideA + sideB <= sideC) || (sideA + sideC <= sideB) || (sideB + sideC <= sideA)) {
    return "Error: The given sides do not form a triangle.";
  }
  
  double semiPerimeter = (sideA + sideB + sideC) / 2;
  
  double area = mySqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));
  
  return area.toString();
}

void main() {
  double sideA = 1;
  double sideB = 1;
  double sideC = 1;
  
  String result = calculateTriangleArea(sideA, sideB, sideC);
  print("The area of the triangle is: $result");
}
