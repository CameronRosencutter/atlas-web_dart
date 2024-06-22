class Password {
  late String _password;

  String get password => _password;

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
  final ps = Password();
  ps.password = "Just3z";
  if (ps.isValid())
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
  
  ps.password = "ShouldWorkf7ne";
  if (ps.isValid())
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
}
