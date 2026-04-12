import 'package:flutter/material.dart';

class ManageBabyLabel extends StatelessWidget {
  const ManageBabyLabel({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Color(0xFF476500),
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
