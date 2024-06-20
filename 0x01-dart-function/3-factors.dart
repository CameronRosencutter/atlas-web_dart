int fact(int f) {
  if (f <= 1) {
    return 1;
  } else {
    return f * fact(f - 1);
  }
}

void main() {
  int number = 2; // Example usage
  print('Factorial of $number is ${fact(number)}');
}
