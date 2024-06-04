import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// import '../constants.dart';
// import '../questions.dart';
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

  bool isAnswered = false;

  List questions = [];
  Map<String, dynamic> question = {};
  int currentQuestionIndex = 0;
  int totalScore = 0;

  String displayedText = '';
  // String wrongFormula = '';

  Map<String, dynamic> getNextQuestion() {
    var random = Random();
    int nextIndex;
    do {
      nextIndex = random.nextInt(questions.length);
    } while (nextIndex == currentQuestionIndex);
    currentQuestionIndex = nextIndex;
    return questions[nextIndex].data();
  }

  @override
  void initState() {
    FirebaseFirestore.instance.collection('questions').get().then((QuerySnapshot snapshot) {
      setState(() {
        questions = snapshot.docs;
        questions.shuffle();
        question = questions[currentQuestionIndex].data();
        displayedText = question['kalimat']!;
        // wrongFormula = getRandomFormula(formulaList[question['formula']!]);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFF5FF),
      body: SafeArea(
        child: questions.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: answer['type'] != null
                              ? () {
                                  setState(() {
                                    if (displayedText == question['kalimat']!) {
                                      displayedText = question['bahasa_inggris']!;
                                    } else {
                                      displayedText = question['kalimat']!;
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
                              border: Border.all(color: const Color(0xFF1D267D), width: 5),
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
                              child: Image.asset(displayedText == question['kalimat']! ? 'assets/imgs/ind.png' : 'assets/imgs/en.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Choices(
                      answer: answer,
                      question: question,
                      choices: choices,
                      // formula: formulaList[question['formula']!],
                      // randomFormula: wrongFormula,
                      borderColor: const Color(0xFF1D267D),
                    ),
                    isAnswered
                        ? GestureDetector(
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
                                              displayedText = question['kalimat']!;
                                              isAnswered = false;
                                              // wrongFormula = getRandomFormula(formulaList[question['formula']!]);
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
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: const Color(0xFFA6FF96),
                                border: Border.all(color: const Color(0xFF1D267D), width: 5),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text(
                                  'Lanjut',
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
                    GestureDetector(
                      onTap: () {
                        if (isAnswered) {
                          var text =
                              'Kalimat:\n${question['kalimat']}\n\nJenis Kalimat:\n${question['jenis_kalimat']}\n(Jawaban Anda: ${choices["type"]})\n\nWaktu:\n${question['konsep_waktu']}\n(Jawaban Anda: ${choices["time"]})\n\nAspek:\n${question['aspek']}\n(Jawaban Anda: ${choices["aspect"]})\n\nFormula:\n${question['formula']}\n(Jawaban Anda: ${choices["formula"]})\n\nBahasa Inggris:\n${question['bahasa_inggris']}';

                          scaleDialog(
                            context,
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    text,
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
                        } else {
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
                          } else if (choices['type'] != '' &&
                              choices['time'] != '' &&
                              choices['aspect'] != '' &&
                              choices['formula'] != '') {
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

                              isAnswered = true;
                            });
                          }
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: isAnswered ? const Color(0xFFF6F5F2) : const Color(0xFFA6FF96),
                          border: Border.all(color: const Color(0xFF1D267D), width: 5),
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
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
