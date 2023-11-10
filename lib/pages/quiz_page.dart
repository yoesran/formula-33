import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/choices.dart';
import '../widgets/scale_dialog.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key, required this.question});

  final Map<String, String> question;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Map<String, String> choices = {
    'type': '',
    'time': '',
    'aspect': '',
    'formula': '',
  };

  Map<String, bool?> answer = {
    'type': null,
    'time': null,
    'aspect': null,
    'formula': null,
  };

  String wrongFormula = '';

  @override
  void initState() {
    setState(() {
      wrongFormula = getRandomFormula(widget.question['formula']!);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFEADBC8),
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    widget.question['kalimat']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Choices(
                answer: answer,
                question: widget.question,
                choices: choices,
                formula: widget.question['formula']!,
                randomFormula: wrongFormula,
              ),
              answer['type'] == null
                  ? GestureDetector(
                      onTap: () {
                        if (choices['type'] == '' || choices['time'] == '' || choices['aspect'] == '' || choices['formula'] == '') {
                          scaleDialog(
                            context,
                            const SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    'Silakan pilih terlebih dahulu semua pertanyaan yang ada',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        } else if (choices['type'] != '' && choices['time'] != '' && choices['aspect'] != '' && choices['formula'] != '') {
                          setState(() {
                            answer['type'] = choices['type'] == widget.question['jenis_kalimat'];
                            answer['time'] = choices['time'] == widget.question['konsep_waktu'];
                            answer['aspect'] = choices['aspect'] == widget.question['aspek'];
                            answer['formula'] = choices['formula'] == widget.question['formula'];
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFA6FF96),
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                          child: Text(
                            'Cek Jawaban',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
