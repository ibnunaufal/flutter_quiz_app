import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionsIndex = 0;
  void answerQuestion() {
    setState(() {
      questionsIndex += 1;
    });
    print("pencet");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Apa warna favorit?',
        'answer': ['Black', 'Blue', 'Red']
      },
      {
        'questionText': 'Hewan favorit?',
        'answer': ['Kucing', 'Anjing', 'Ikan']
      }
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Title")),
        body: Column(children: [
          Question(questions[questionsIndex]['questionText']),
          ...(questions[questionsIndex]['answer'] as List<String>).map((ans) {
            return Answer(answerQuestion, ans);
          }).toList(),
          ElevatedButton(onPressed: answerQuestion, child: Text('A')),
          ElevatedButton(onPressed: answerQuestion, child: Text('B')),
          ElevatedButton(onPressed: answerQuestion, child: Text('C')),
          ElevatedButton(onPressed: answerQuestion, child: Text('D')),
        ]),
      ),
    );
  }
}
