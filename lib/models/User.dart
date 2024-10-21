class User {
  final String userId; // ID of the user
  final String name; // Name of the user
  final String email; // Email of the user
  final String password; // Password of the user


  User({
    this.userId = '',
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  String toString() {
    return 'User(name: \$name, email: \$email, password: [HIDDEN])';
  }
}