import 'package:flutter/material.dart';

import './choice.dart';

class Choices extends StatefulWidget {
  const Choices({
    super.key,
    required this.answer,
    required this.question,
    required this.choices,
    required this.formula,
    required this.randomFormula,
  });

  final Map<String, bool?> answer;
  final Map<String, String> question;
  final Map<String, String> choices;
  final String formula;
  final String randomFormula;

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
          dialogTitle: 'Jenis Kalimat',
          dialogChoices: const ['Verbal', 'Nomina', 'Pasif'],
          choices: widget.choices,
          answer: widget.question['jenis_kalimat']!,
          isTrue: widget.answer['type'],
          type: 'type',
        ),
        Choice(
          color: const Color(0xFFFFB6D9),
          dialogTitle: 'Waktu',
          dialogChoices: const ['Sekarang', 'Lampau', 'Akan Datang'],
          choices: widget.choices,
          answer: widget.question['konsep_waktu']!,
          isTrue: widget.answer['time'],
          type: 'time',
        ),
        Choice(
          color: const Color(0xFFFEFFAC),
          dialogTitle: 'Aspek',
          dialogChoices: const ['ke-sedang-an', 'ke-sudah-an', 'ke-akandatang-an', 'kosong'],
          choices: widget.choices,
          answer: widget.question['aspek']!,
          isTrue: widget.answer['aspect'],
          type: 'aspect',
        ),
        Choice(
          color: const Color(0xFFF9B572),
          dialogTitle: 'Formula',
          dialogChoices: [widget.formula, widget.randomFormula],
          choices: widget.choices,
          answer: widget.question['formula']!,
          isTrue: widget.answer['formula'],
          type: 'formula',
        ),
      ],
    );
  }
}
