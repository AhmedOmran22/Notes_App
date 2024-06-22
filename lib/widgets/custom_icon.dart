import 'package:flutter/material.dart';

class CustomIconForAppBar extends StatelessWidget {
  const CustomIconForAppBar({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
