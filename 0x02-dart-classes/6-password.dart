class Password {
  String password = '';
  String get getPassword => password;
  Password({required this.password});
  set setPassword(String password) => this.password = password;

  isValid() {
    return (password.length >= 8 &&
        password.length <= 16 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[0-9]')));
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
