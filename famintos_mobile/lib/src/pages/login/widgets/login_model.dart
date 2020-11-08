class LoginModel {
  String email;
  String password;

  LoginModel({this.email, this.password});

  @override
  String toString() => "username: $email \n password: $password";
}
