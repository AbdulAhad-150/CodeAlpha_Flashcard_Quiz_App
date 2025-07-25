import 'package:flash_card_quiz_app/add_flash_card.dart';
import 'package:flash_card_quiz_app/flash_card.dart';
import 'package:flash_card_quiz_app/ques_and_ans.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndexNum = 0;

  @override
  Widget build(BuildContext context) {
    final bool hasCards =
        quesandanslist.isNotEmpty &&
        _currentIndexNum >= 0 &&
        _currentIndexNum < quesandanslist.length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        title: Center(
          child: Text(
            'Flash Card Quiz App',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            hasCards
                ? SizedBox(
                    height: 300,
                    width: 300,
                    child: FlipCard(
                      direction: FlipDirection.HORIZONTAL,
                      front: FlashCardWidget(
                        text: quesandanslist[_currentIndexNum].question,
                      ),
                      back: FlashCardWidget(
                        text: quesandanslist[_currentIndexNum].answer,
                      ),
                    ),
                  )
                : Container(
                    height: 300,
                    alignment: Alignment.center,
                    child: Text(
                      "No flashcards available.",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
            SizedBox(height: 10),
            Text('Tap to view Answer', style: TextStyle(fontSize: 15)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: hasCards ? showPreviousCard : null,
                  icon: Icon(
                    Icons.arrow_left,
                    size: 30,
                    color: Color(0xFFE4E4E4),
                  ),
                  label: Text(""),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: hasCards ? () => deletebtn(context) : null,
                  icon: Icon(
                    Icons.delete,
                    size: 30,
                    color: (_currentIndexNum == 1 || !hasCards)
                        ? Colors.grey.shade400
                        : Color(0xFFE4E4E4),
                  ),
                  label: Text(""),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: hasCards ? showNextCard : null,
                  icon: Icon(
                    Icons.arrow_right,
                    size: 30,
                    color: Color(0xFFE4E4E4),
                  ),
                  label: Text(""),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddFlashCardPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              ),
              child: Text(
                "Add FlashCard",
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

  void showNextCard() {
    setState(() {
      _currentIndexNum = (_currentIndexNum + 1 < quesandanslist.length)
          ? _currentIndexNum + 1
          : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndexNum = (_currentIndexNum - 1 >= 0)
          ? _currentIndexNum - 1
          : quesandanslist.length - 1;
    });
  }

  void deletebtn(BuildContext context) {
    if (_currentIndexNum == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Cannot delete this card. Please add more cards."),
          duration: Duration(seconds: 1),
          backgroundColor: Colors.grey,
        ),
      );
      return;
    }

    if (quesandanslist.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("No flashcards to delete."),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() {
      quesandanslist.removeAt(_currentIndexNum);

      if (_currentIndexNum >= quesandanslist.length) {
        _currentIndexNum = quesandanslist.length - 1;
      }

      if (_currentIndexNum < 0) {
        _currentIndexNum = 0;
      }
    });
  }
}
