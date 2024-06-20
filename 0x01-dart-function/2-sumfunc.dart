int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

void showFunc(int a, int b) {
  int sum = add(a, b);
  int difference = sub(a, b);
  print('Add $a + $b = $sum');
  print('Sub $a - $b = $difference');
}

void main(List<String> args) {
  int a = int.parse(args[0]);
  int b = int.parse(args[1]);
  showFunc(a, b);
}
