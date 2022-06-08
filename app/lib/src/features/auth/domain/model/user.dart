class User {
  const User(this.username, this.password, this.email, {this.token});

  final String username;
  final String? email;
  final String? password;
  final String? token;

  factory User.fromJson(Map<String, dynamic> json) =>
      User(json['username'], json['password'], json['email'],
          token: json['token']);
}
