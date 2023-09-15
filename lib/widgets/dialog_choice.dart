import 'package:flutter/material.dart';

class DialogChoice extends StatelessWidget {
  const DialogChoice({super.key, required this.choice, required this.color, required this.onTap});

  final String choice;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            choice,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
