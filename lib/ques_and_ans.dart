import 'package:flash_card_quiz_app/flash_card.dart';

List<QuesAndAns> quesandanslist = [
  QuesAndAns(
    question:
        "What is Flutter primarily used for? \n\n A. Data Science \n B. Game Development \n C. Cross-platform App Development \nD. Web Scraping",

    answer: "Cross-platform App Development",
  ),
  QuesAndAns(
    question:
        "Which language is used to write Flutter apps?\n\n A. Kotlin \n B. Dart \n C. Swift \n D. JavaScript",

    answer: "B. Dart",
  ),
  QuesAndAns(
    question:
        "What is a `Widget` in Flutter? \n\n A. A server \n B. A class that describes part of the UI \n C. A plugin \n D. A JSON file",
    answer: "B. A class that describes part of the UI",
  ),
  QuesAndAns(
    question:
        "Which widget is used for layouts in a columna fashion? \n\n A. `Row` \n B. `Stack` \n C. `Column` \nD. `ListView` ",
    answer: "C. `Column`",
  ),

  QuesAndAns(
    question:
        "What does `hot reload` do in Flutter?\n\n A. Compiles the code from scratch \n B. Updates UI instantly without restarting the app \n C. Closes the app \n  D. Deletes the app cache ",
    answer: "B. Updates UI instantly without restarting the app",
  ),
  QuesAndAns(
    question:
        "What is the difference between `StatelessWidget` and `StatefulWidget`\n\n A. `StatefulWidget` stores dynamic data that can change during runtime.\n B. `StatelessWidget` allows UI updates.\n C. `StatefulWidget` has no build method. \n D. Both are the same.",
    answer:
        "A. `StatefulWidget` stores dynamic data that can change during runtime.",
  ),
  QuesAndAns(
    question:
        "How do you navigate to another screen in Flutter?\n\n A. `Router.push() \n B. `Navigator.push()`\n C. `Route.newScreen()`\n D. `App.goto()`",
    answer: "B. `Navigator.push()`",
  ),
  QuesAndAns(
    question:
        "What is the purpose of `setState()` in Flutter?\n\n A. To restart the app \n B. To dispose widgets \n C. To update UI when data changes \n D. To store persistent data",
    answer: "C. To update UI when data changes",
  ),
  QuesAndAns(
    question:
        "Which widget is best suited for a scrollable list of items?\n\n A. `Container`\n B. `Column`\n C. `ListView` \n D.`Scaffold`",
    answer: "C. `ListView`",
  ),
  QuesAndAns(
    question:
        "How are themes managed in Flutter?\n\n A. Via CSS \n B. Using `MaterialApp`'s `theme` property \n C. From a YAML file \n D. Through JavaScript injection",
    answer: "B. Using `MaterialApp`'s `theme` property",
  ),
];
