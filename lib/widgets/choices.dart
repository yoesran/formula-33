import 'package:flutter/material.dart';
// import 'package:formula_33/constants.dart';

import './choice.dart';

class Choices extends StatefulWidget {
  const Choices({
    super.key,
    required this.answer,
    required this.question,
    required this.choices,
    // required this.formula,
    // required this.randomFormula,
    required this.borderColor,
  });

  final Map<String, bool?> answer;
  final Map<String, dynamic> question;
  final Map<String, String> choices;
  // final String formula;
  // final String randomFormula;
  final Color borderColor;

  @override
  State<Choices> createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Choice(
          color: const Color(0xFFA7ECEE),
          borderColor: widget.borderColor,
          dialogTitle: 'Jenis Kalimat',
          dialogChoices: const ['Verbal', 'Nomina', 'Pasif'],
          choices: widget.choices,
          answer: widget.question['jenis_kalimat'],
          isTrue: widget.answer['type'],
          type: 'type',
        ),
        Choice(
          color: const Color(0xFFFFB6D9),
          borderColor: widget.borderColor,
          dialogTitle: 'Waktu',
          dialogChoices: const ['Sekarang', 'Lampau', 'Akan Datang'],
          choices: widget.choices,
          answer: widget.question['konsep_waktu'],
          isTrue: widget.answer['time'],
          type: 'time',
        ),
        Choice(
          color: const Color(0xFFFEFFAC),
          borderColor: widget.borderColor,
          dialogTitle: 'Aspek',
          dialogChoices: const ['ke-sedang-an', 'ke-sudah-an', 'ke-akandatang-an', 'kosong'],
          choices: widget.choices,
          answer: widget.question['aspek'],
          isTrue: widget.answer['aspect'],
          type: 'aspect',
        ),
        Choice(
          color: const Color(0xFFF9B572),
          borderColor: widget.borderColor,
          dialogTitle: 'Formula',
          dialogChoices: const [
            "V1",
            "V2",
            "V3",
            "V4",
            "V5",
            "V6",
            "V7",
            "V8",
            "V9",
            "V10",
            "V11",
            "N1",
            "N2",
            "N3",
            "N4",
            "N5",
            "N6",
            "N7",
            "N8",
            "N9",
            "N10",
            "N11",
            "P1",
            "P2",
            "P3",
            "P4",
            "P5",
            "P6",
            "P7",
            "P8",
            "P9",
            "P10",
            "P11",
          ],
          choices: widget.choices,
          answer: widget.question['formula'],
          isTrue: widget.answer['formula'],
          type: 'formula',
          isStretched: false,
        ),
      ],
    );
  }
}
