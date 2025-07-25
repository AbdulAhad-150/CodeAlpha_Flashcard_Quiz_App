// import 'dart:ffi';

import 'package:flash_card_quiz_app/flash_card.dart';
import 'package:flash_card_quiz_app/ques_and_ans.dart';
import 'package:flutter/material.dart';

class AddFlashCardPage extends StatefulWidget {
  const AddFlashCardPage({super.key});

  @override
  State<AddFlashCardPage> createState() => _AddFlashCardPageState();
}

class _AddFlashCardPageState extends State<AddFlashCardPage> {
  final _questions = TextEditingController();
  final _answer = TextEditingController();
  void _addflashcard() {
    if (_questions.text.isNotEmpty && _answer.text.isNotEmpty) {
      setState(() {
        quesandanslist.add(
          QuesAndAns(question: _questions.text, answer: _answer.text),
        );
      });
      _questions.clear();
      _answer.clear();
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        // elevation: 100,
        // shadowColor: Colors.green,
        // shape: Border.all(color: Colors.yellow,),
        title: Center(
          child: Text(
            'Enter the Question and Answer of your choice',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: _questions,
              decoration: InputDecoration(labelText: 'Enter Question'),
            ),
            TextField(
              controller: _answer,
              decoration: InputDecoration(labelText: 'Enter Answer'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _addflashcard,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                padding: EdgeInsets.only(
                  right: 25,
                  left: 25,
                  top: 20,
                  bottom: 20,
                ),
              ),
              child: Text(
                "Add Flash Card",
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
