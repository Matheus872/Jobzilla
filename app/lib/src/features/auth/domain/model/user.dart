class User {
  const User(this.username, this.password, this.email, this.profileType,
      {this.token});

  final String username;
  final String? email;
  final String? password;
  final int? profileType;
  final String? token;

  factory User.fromJson(Map<String, dynamic> json) => User(
      json['username'], json['password'], json['email'], json['profileType'],
      token: json['token']);
}
