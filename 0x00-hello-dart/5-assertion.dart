void main(List<String> args) {
  int score = int.parse(args[0]); // Assuming the score is passed as a command line argument
  assert(score >= 80, 'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80"');
  print('You Passed');
}
