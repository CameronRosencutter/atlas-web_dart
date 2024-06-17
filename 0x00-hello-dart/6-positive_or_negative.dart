void main(List<String> args) {
  int number = int.parse(args[0]); // Convert the string argument to an integer
  
  print('$number is ${number > 0 ? 'positive' : number == 0 ? 'zero' : 'negative'}');
}
