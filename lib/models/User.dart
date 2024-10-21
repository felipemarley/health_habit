import 'package:uuid/uuid.dart';

class User {
  final String userId; // ID of the user
  final String name; // Name of the user
  final String email; // Email of the user
  final String password; // Password of the user


  User({
    required this.name,
    required this.email,
    required this.password,
  }) : userId = const Uuid().v4();

  @override
  String toString() {
    return '[ID: $userId] User(name: $name, email: $email, password: [HIDDEN])';
  }
}