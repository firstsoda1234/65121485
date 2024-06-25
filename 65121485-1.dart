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
  return "Area of the triangle is: $area";
}

void main() {
  print(calculateTriangleArea(1, 1, 1));
}
