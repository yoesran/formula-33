import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './quiz_page.dart';
// import '../questions.dart';

class QuizListPage extends StatefulWidget {
  const QuizListPage({super.key});

  @override
  State<QuizListPage> createState() => _QuizListPageState();
}

class _QuizListPageState extends State<QuizListPage> {
  Future<List> fetchQuestions() {
    CollectionReference questions = FirebaseFirestore.instance.collection('questions');

    return questions.get().then((QuerySnapshot snapshot) {
      return snapshot.docs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: fetchQuestions(),
          builder: (context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Center(child: Text('Error, silakan coba kembali'));
              } else {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    var questions = snapshot.data[index].data();
                    return Card(
                      child: ListTile(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuizPage(question: questions))),
                        title: Text(questions['kalimat']),
                      ),
                    );
                  },
                );
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
