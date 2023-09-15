import 'package:flutter/material.dart';

import './scale_dialog.dart';

class Choice extends StatelessWidget {
  const Choice({super.key, required this.dialogContent, required this.choice, required this.color});

  final Widget dialogContent;
  final String choice;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => scaleDialog(context, dialogContent),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black, width: 5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            choice,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
