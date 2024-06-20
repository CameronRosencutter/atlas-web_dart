void outer(String name, String id) {
  String inner() {
    List<String> nameParts = name.split(' ');
    String lastNameInitial = nameParts[1][0];
    return 'Hello Agent ${lastNameInitial}.${nameParts[0]} your id is $id';
  }

  print(inner());
}

void main() {
  outer("Youssef Belhadj", "001"); // Example usage
}
