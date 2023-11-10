import 'package:flutter/material.dart';

import './quiz_page.dart';
import '../questions.dart';

class QuizListPage extends StatefulWidget {
  const QuizListPage({super.key});

  @override
  State<QuizListPage> createState() => _QuizListPageState();
}

class _QuizListPageState extends State<QuizListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuizPage(question: questions[index]))),
                title: Text(questions[index]['kalimat']!),
              ),
            );
          },
        ),
      ),
    );
  }
}
