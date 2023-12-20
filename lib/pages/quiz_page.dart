import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/choices.dart';
import '../widgets/scale_dialog.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key, required this.question});

  final Map<String, dynamic> question;

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

  String displayedText = '';
  String wrongFormula = '';

  @override
  void initState() {
    setState(() {
      displayedText = widget.question['kalimat']!;
      wrongFormula = getRandomFormula(formulaList[widget.question['formula']!]);
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
              Stack(
                children: [
                  GestureDetector(
                    onTap: answer['type'] != null
                        ? () {
                            setState(() {
                              if (displayedText == widget.question['kalimat']!) {
                                displayedText = widget.question['bahasa_inggris']!;
                              } else {
                                displayedText = widget.question['kalimat']!;
                              }
                            });
                          }
                        : null,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEADBC8),
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Text(
                            displayedText,
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
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: AnimatedScale(
                      scale: answer['type'] != null ? 1 : 0,
                      duration: const Duration(milliseconds: 100),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(displayedText == widget.question['kalimat']! ? 'assets/imgs/ind.png' : 'assets/imgs/en.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Choices(
                answer: answer,
                question: widget.question,
                choices: choices,
                formula: formulaList[widget.question['formula']!],
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
                            answer['type'] = choices['type'] == jenisKalimatList[widget.question['jenis_kalimat']];
                            answer['time'] = choices['time'] == konsepWaktuList[widget.question['konsep_waktu']];
                            answer['aspect'] = choices['aspect'] == aspekList[widget.question['aspek']];
                            answer['formula'] = choices['formula'] == formulaList[widget.question['formula']];
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
