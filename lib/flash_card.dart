import 'package:flutter/material.dart';

class QuesAndAns {
  final String question;
  final String answer;

  QuesAndAns({required this.question, required this.answer});
}

class FlashCardWidget extends StatelessWidget {
  FlashCardWidget({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        elevation: 17,
        shadowColor: Color.fromARGB(255, 2, 75, 6),
        color: Colors.grey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
