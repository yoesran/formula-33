import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../questions.dart';
import '../widgets/scale_dialog.dart';
import '../widgets/choices.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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

  Map<String, String> question = {};
  int currentQuestionIndex = 0;
  int totalScore = 0;

  String wrongFormula = '';

  Map<String, String> getNextQuestion() {
    var random = Random();
    int nextIndex;
    do {
      nextIndex = random.nextInt(questions.length);
    } while (nextIndex == currentQuestionIndex);
    currentQuestionIndex = nextIndex;
    return questions[nextIndex];
  }

  @override
  void initState() {
    questions.shuffle();
    question = questions[currentQuestionIndex];

    setState(() {
      wrongFormula = getRandomFormula(question['formula']!);
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
                    question['kalimat']!,
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
                question: question,
                choices: choices,
                formula: question['formula']!,
                randomFormula: wrongFormula,
              ),
              GestureDetector(
                onTap: () {
                  if (answer['type'] != null) {
                    scaleDialog(
                      context,
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();

                                setState(() {
                                  choices = {
                                    'type': '',
                                    'time': '',
                                    'aspect': '',
                                    'formula': '',
                                  };

                                  answer = {
                                    'type': null,
                                    'time': null,
                                    'aspect': null,
                                    'formula': null,
                                  };

                                  question = getNextQuestion();
                                  wrongFormula = getRandomFormula(question['formula']!);
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                margin: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(color: Colors.black, width: 3),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Lanjut Bermain',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                scaleDialog(
                                  context,
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Total Skor Kamu\n$totalScore Poin',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
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
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                margin: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(color: Colors.black, width: 3),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Lihat Skor',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (choices['type'] == '' || choices['time'] == '' || choices['aspect'] == '' || choices['formula'] == '') {
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
                    var score = 0;

                    score += choices['type'] == question['jenis_kalimat'] ? 25 : 0;
                    score += choices['time'] == question['konsep_waktu'] ? 25 : 0;
                    score += choices['aspect'] == question['aspek'] ? 25 : 0;
                    score += choices['formula'] == question['formula'] ? 25 : 0;

                    totalScore += score;

                    setState(() {
                      answer['type'] = choices['type'] == question['jenis_kalimat'];
                      answer['time'] = choices['time'] == question['konsep_waktu'];
                      answer['aspect'] = choices['aspect'] == question['aspek'];
                      answer['formula'] = choices['formula'] == question['formula'];
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
                  child: Center(
                    child: Text(
                      answer['type'] == null ? 'Cek Jawaban' : 'Lanjut',
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
            ],
          ),
        ),
      ),
    );
  }
}
