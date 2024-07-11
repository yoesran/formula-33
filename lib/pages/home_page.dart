import 'package:flutter/material.dart';
import 'package:formula_33/pages/quiz_list_page.dart';

import 'game_page.dart';
import '../widgets/menu_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0, right: 12.0, left: 12.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Formula 33 Bahasa Inggris',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 75),
              MenuButton(
                color: const Color(0xFF9400FF),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GamePage())),
                iconPath: 'assets/imgs/brain.png',
                text: 'Mulai Bermain',
              ),
              const SizedBox(height: 75),
              MenuButton(
                color: Colors.cyan,
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizListPage())),
                iconPath: 'assets/imgs/dictionary.png',
                text: 'Mulai Belajar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
