import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.color,
    required this.onTap,
    required this.iconPath,
    required this.text,
  });

  final Color color;
  final VoidCallback onTap;
  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: onTap,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Transform.translate(
                offset: const Offset(50, -50),
                child: SizedBox(
                  width: 125,
                  height: 125,
                  child: Image.asset(iconPath),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
