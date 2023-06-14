import 'package:doctor_kids/core/stert_button.dart';
import 'package:doctor_kids/src/details/header.dart';
import 'package:doctor_kids/src/views/finish_page.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> answers = ['1', '2', '3'];

  List<String> questions = ['question 1', 'question 2'];
  bool isFinish = false;
  int questionIndex = 0;

  void doAnswer() {
    if (questionIndex == questions.length - 1) {
      setState(() {
        isFinish = true;
        print('is true');
      });
    } else {
      setState(() {
        questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          child: Column(
            children: [
              Header(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                child: Column(
                  children: [
                    isFinish
                        ? Container()
                        : Stack(
                            children: <Widget>[
                              // Stroked text as border.
                              Text(
                                '${questions[questionIndex]}',
                                style: TextStyle(
                                  fontSize: 40,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 3
                                    ..color = Colors.white,
                                ),
                              ),
                              // Solid text as fill.
                              Text(
                                '${questions[questionIndex]}',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                    isFinish
                        ? Container(
                            child: Center(
                              child: StartButton(
                                name: 'FINISH',
                                action: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FinishPage()));
                                },
                              ),
                            ),
                          )
                        : Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 50, horizontal: 100),
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(25)),
                            width: double.infinity,
                            height: 216,
                            child: ListView.builder(
                                itemCount: answers.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 6),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 54, 54, 54),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    width: double.infinity,
                                    height: 60,
                                    child: TextButton(
                                      child: Text(
                                        '${answers[index]}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      onPressed: () {
                                        doAnswer();
                                      },
                                    ),
                                  );
                                }),
                          )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
