// import 'dart:convert';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:formula_33/constants.dart';
import 'package:formula_33/questions.dart';
// import 'package:http/http.dart' as http;

import '../widgets/scale_dialog.dart';
import '../widgets/choices.dart';
// import '../constants.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Map<String, String> choices = {
    'type': '',
    'time': '',
    'aspect': '',
  };

  Map<String, String> question = {};

  // Future<String> text() async {
  //   var url = Uri.parse('https://api.openai.com/v1/chat/completions');

  //   Map<String, String> headers = {'Content-Type': 'application/json;charset=UTF-8', 'Charset': 'utf-8', 'Authorization': 'Bearer $apiKey'};

  //   String promptData =
  //       'Tolong buatkan satu kalimat acak, dapat berupa kalimat verbal atau pasif atau nominal, dapat berupa kalimat dengan konsep waktu sekarang atau lampau atau akan datang, dapat berupa kalimat dengan aspek ke-sedang-an atau ke-sudah-an atau ke-akan-an atau kosong, kembalikan dalam bentuk seperti berikut {"kalimat": kalimat yang dibuat,"jenis_kalimat": Verbal atau Pasif atau Nominal,"konsep_waktu": Sekarang atau Lampau atau Akan Datang,"aspek": ke-sedang-an atau ke-sudah-an atau ke-akan-an atau kosong,"bahasa_inggris": ubah kalimat ke bahasa inggris}';

  //   final data = jsonEncode({
  //     "model": "gpt-3.5-turbo",
  //     "messages": [
  //       {"role": "user", "content": promptData}
  //     ]
  //   });

  //   try {
  //     var res = await http.post(url, headers: headers, body: data);

  //     if (res.statusCode == 200) {
  //       return jsonDecode(res.body)['choices'][0]['message']['content'];
  //     }
  //     return jsonDecode(res.body)['error']['message'];
  //   } catch (error) {
  //     return error.toString();
  //   }
  // }

  @override
  void initState() {
    Random random = Random();
    int randomIndex = random.nextInt(questions.length);

    question = questions[randomIndex];

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
            Choices(choices: choices),
            GestureDetector(
              onTap: () {
                String text = 'Silakan pilih terlebih dahulu semua pertanyaan yang ada';
                if (choices['type'] != '' || choices['time'] != '' || choices['aspect'] != '') {
                  text =
                      'Kalimat:\n${question['kalimat']!}\n\nJenis Kalimat:\n${question['jenis_kalimat']!}\n(Jawaban Anda: ${choices["type"]})\n\nWaktu:\n${question['konsep_waktu']!}\n(Jawaban Anda: ${choices["time"]})\n\nAspek:\n${question['aspek']!}\n(Jawaban Anda: ${choices["aspect"]})\n\nFormula:\n${generateFormula(question['jenis_kalimat']!, question['konsep_waktu']!, question['aspek']!)}\n\nBahasa Inggris:\n${question['bahasa_inggris']}';
                }

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
                    ));
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
            ),
          ],
        ),
      )

          // FutureBuilder(
          //   future: text(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const Center(
          //         child: CircularProgressIndicator(color: Colors.black),
          //       );
          //     }

          //     return ;
          //   },
          // ),
          ),
    );
  }
}
