import 'package:flutter/material.dart';

class DialogChoice extends StatelessWidget {
  const DialogChoice({super.key, required this.choice, required this.color, required this.isTrue, required this.onTap});

  final String choice;
  final Color color;
  final bool isTrue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
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
        ),
        Visibility(
          visible: isTrue,
          child: Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(70),
              ),
              child: const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 35,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
