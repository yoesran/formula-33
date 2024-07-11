import 'package:flutter/material.dart';
import 'package:formula_33/widgets/choice.dart';

List<String> filterFormulas(Map<String, String> choices) {
  const Map<String, List<String>> typeFormulas = {
    'Verbal': ['V1', 'V2', 'V3', 'V4', 'V5', 'V6', 'V7', 'V8', 'V9', 'V10', 'V11'],
    'Nomina': ['N1', 'N2', 'N3', 'N4', 'N5', 'N6', 'N7', 'N8', 'N9', 'N10', 'N11'],
    'Pasif': ['P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7', 'P8', 'P9', 'P10', 'P11'],
  };

  const Map<String, List<String>> timeFormulas = {
    'Sekarang': ['V1', 'V3', 'V5', 'V11', 'N1', 'N3', 'N5', 'N11', 'P1', 'P3', 'P5', 'P11'],
    'Lampau': ['V4', 'V6', 'V7', 'V9', 'N4', 'N6', 'N7', 'N9', 'P4', 'P6', 'P7', 'P9'],
    'Akan Datang': ['V2', 'V8', 'V10', 'N2', 'N8', 'N10', 'P2', 'P8', 'P10'],
  };

  const Map<String, List<String>> aspectFormulas = {
    'ke-sedang-an': ['V3', 'V7', 'V8', 'V11', 'N3', 'N7', 'N8', 'N11', 'P3', 'P7', 'P8', 'P11'],
    'ke-sudah-an': ['V5', 'V9', 'V10', 'V11', 'N5', 'N9', 'N10', 'N11', 'P5', 'P9', 'P10', 'P11'],
    'ke-akandatang-an': ['V6', 'N6', 'P6'],
    'kosong': ['V1', 'V2', 'V4', 'N1', 'N2', 'N4', 'P1', 'P2', 'P4'],
  };

  List<String> filteredFormulas = [
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
    "P11"
  ];

  if (choices['type'] != null && choices['type']!.isNotEmpty) {
    filteredFormulas = filteredFormulas.where((f) => typeFormulas[choices['type']]!.contains(f)).toList();
  }

  if (choices['time'] != null && choices['time']!.isNotEmpty) {
    filteredFormulas = filteredFormulas.where((f) => timeFormulas[choices['time']]!.contains(f)).toList();
  }

  if (choices['aspect'] != null && choices['aspect']!.isNotEmpty) {
    filteredFormulas = filteredFormulas.where((f) => aspectFormulas[choices['aspect']]!.contains(f)).toList();
  }

  return filteredFormulas;
}

class FormulaPage extends StatefulWidget {
  const FormulaPage({super.key});

  @override
  State<FormulaPage> createState() => _FormulaPageState();
}

class _FormulaPageState extends State<FormulaPage> {
  Map<String, String> choices = {
    'type': '',
    'time': '',
    'aspect': '',
  };

  final ValueNotifier<Map<String, String>> _choices = ValueNotifier<Map<String, String>>({
    'type': '',
    'time': '',
    'aspect': '',
  });

  void updateChoices(String key, String choice) {
    _choices.value = {..._choices.value, key: choice};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Choice(
                color: const Color(0xFFA7ECEE),
                borderColor: Colors.black,
                dialogTitle: 'Jenis Kalimat',
                dialogChoices: const ['Verbal', 'Nomina', 'Pasif'],
                choices: choices,
                answer: '',
                type: 'type',
                updateChoices: updateChoices,
              ),
              Choice(
                color: const Color(0xFFFFB6D9),
                borderColor: Colors.black,
                dialogTitle: 'Waktu',
                dialogChoices: const ['Sekarang', 'Lampau', 'Akan Datang'],
                choices: choices,
                answer: '',
                type: 'time',
                updateChoices: updateChoices,
              ),
              Choice(
                color: const Color(0xFFFEFFAC),
                borderColor: Colors.black,
                dialogTitle: 'Aspek',
                dialogChoices: const ['ke-sedang-an', 'ke-sudah-an', 'ke-akandatang-an', 'kosong'],
                choices: choices,
                answer: '',
                type: 'aspect',
                updateChoices: updateChoices,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ValueListenableBuilder(
                  valueListenable: _choices,
                  builder: (BuildContext context, Map<String, String> value, Widget? child) {
                    return Text(
                      'Rumus:\n${filterFormulas(value)}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
