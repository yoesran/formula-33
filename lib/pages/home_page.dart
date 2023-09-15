import 'package:flutter/material.dart';

import '../widgets/menu_button.dart';
import './quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
            Align(
              alignment: Alignment.center,
              child: MenuButton(
                color: const Color(0xFF9400FF),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizPage())),
                iconPath: 'assets/imgs/dictionary.png',
                text: 'Mulai Belajar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
