import 'package:flutter/material.dart';

import './scale_dialog.dart';
import './dialog_choice.dart';

class Choice extends StatefulWidget {
  const Choice({
    super.key,
    required this.color,
    required this.dialogTitle,
    required this.dialogChoices,
    required this.choices,
    required this.isTrue,
    required this.type,
    required this.answer,
    this.isStretched = true,
  });

  final Color color;
  final String dialogTitle;
  final String type;
  final String answer;
  final List<String> dialogChoices;
  final Map<String, String> choices;
  final bool? isTrue;
  final bool isStretched;

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  String dialogCurrentSelection = '';

  Widget buildCustomDialog() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              'Pilih ${widget.dialogTitle}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Wrap(
            children: widget.dialogChoices.map((choice) {
              return DialogChoice(
                choice: choice,
                color: dialogCurrentSelection == choice ? const Color(0xFFD8D9DA) : Colors.white,
                isTrue: widget.isTrue != null ? widget.answer == choice : false,
                onTap: () {
                  if (widget.isTrue == null) {
                    setState(() {
                      dialogCurrentSelection = choice;
                    });

                    widget.choices[widget.type] = choice;
                  }

                  Navigator.of(context).pop();
                },
                isStretched: widget.isStretched,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant Choice oldWidget) {
    if (widget.choices['type'] == '') {
      setState(() {
        dialogCurrentSelection = '';
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            scaleDialog(context, buildCustomDialog());
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: widget.color,
              border: Border.all(color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                dialogCurrentSelection == '' ? 'Pilih ${widget.dialogTitle}' : '${widget.dialogTitle}: $dialogCurrentSelection',
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
        ),
        Positioned(
          right: 0,
          top: 0,
          child: AnimatedScale(
            scale: widget.isTrue != null ? 1 : 0,
            duration: const Duration(milliseconds: 100),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(70),
              ),
              child: Icon(
                widget.isTrue != null
                    ? widget.isTrue!
                        ? Icons.check_circle_outline
                        : Icons.cancel
                    : Icons.check_circle_outline,
                color: widget.isTrue != null
                    ? widget.isTrue!
                        ? Colors.green
                        : Colors.red
                    : Colors.green,
                size: 35,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
