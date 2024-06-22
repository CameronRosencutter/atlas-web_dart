class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    return _password.length >= 8 &&
        _password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')) &&
        _password.contains(RegExp(r'[0-9]'));
  }

  String get password => _password;

  set password(String password) {
    _password = password;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
