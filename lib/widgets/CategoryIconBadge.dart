import 'package:flutter/material.dart';

class CategoryIconBadge extends StatelessWidget {
  final String badgeText;
  final Color backgroundColor;
  final Icon icon;

  const CategoryIconBadge({
    Key? key,
    required this.badgeText,
    required this.backgroundColor,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),  // Padding to create space around the icon
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10)  // Circular shape for the badge
      ),
      child: Icon(
        icon.icon, // Extract the IconData from the Icon widget passed
        size: 32, // Size of the icon
        color: Colors.white, // Color of the icon
      ),
    );
  }
}
