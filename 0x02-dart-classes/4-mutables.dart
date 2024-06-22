class Password {
  String _password;

  Password({required String password}) : _password = password;

  // Getter for password
  String get password => _password;

  // Setter for password
  set password(String value) {
    _password = value;
  }

  bool isValid() {
    if (_password.length >= 8 &&
        _password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')) &&
        _password.contains(RegExp(r'[0-9]'))) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

void main() {
  final password = Password(password: "Passwordecode");
  print(password.isValid());
  print(password.toString());
  password.password = "Youssef4321";
  print(password.isValid());
  print(password.toString());
}
