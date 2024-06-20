void outer(String name, String id) {
  String inner() {
    return '$name, ID: $id';
  }

  print(inner());
}

void main() {
  outer('Cameron', '121212121212121212121212'); // Example usage
}
