class Password {
  String _password;

  Password({required String password}) : _password = password;

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
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());

  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}
