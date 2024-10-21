import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Category {
  final String categoryId;  
  final String name;
  final Icon icon;

  Category({
    required this.name,
    required this.icon,
  }) : categoryId = const Uuid().v4();

  
}
