import 'package:flutter/material.dart';
import 'package:formula_33/pages/formula_page.dart';
import 'package:formula_33/pages/quiz_list_page.dart';
import 'package:formula_33/widgets/scale_dialog.dart';

import 'game_page.dart';
import '../widgets/menu_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFFFA823),
          onPressed: () {
            scaleDialog(
              context,
              const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Petunjuk\n\nUntuk bermain, klik Mulai Bermain\n\nUntuk belajar, klik Mulai Belajar\n\n Untuk melihat rumus, klik Rumus',
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
              ),
            );
          },
          child: const Icon(Icons.info_outline),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 12.0),
            child: Column(
              children: [
                const Center(
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
                const SizedBox(height: 75),
                MenuButton(
                  color: const Color(0xFF131842),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FormulaPage())),
                  iconPath: 'assets/imgs/formula.png',
                  text: 'Rumus',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
