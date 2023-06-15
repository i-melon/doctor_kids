import 'package:doctor_kids/core/stert_button.dart';
import 'package:doctor_kids/src/details/header.dart';
import 'package:doctor_kids/src/views/finish_page.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key, required this.superQz});
  final List superQz;
  @override
  State<Quiz> createState() => _QuizState(superQZ: superQz);
}

class _QuizState extends State<Quiz> {
  final List superQZ;
  Set questionsSet = {};
  List questions = [];
  bool isFinish = false;
  int questionIndex = 0;
  List<int> csoreList = [];

  _QuizState({required this.superQZ});

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
    for (int i = 0; i < superQZ.length; i++) {
      for (int y = 0; y < 3; y++) {
        questionsSet.add(superQZ[i]['questions'][y]);
      }
    }
    questions = questionsSet.toList();

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
                                '${questions[questionIndex]['question']}',
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
                                '${questions[questionIndex]['question']}',
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
                                  List<int> useThis = [];
                                  for (int i = 0;
                                      i < csoreList.length;
                                      i = i + 3) {
                                    useThis.add(csoreList[i] +
                                        csoreList[i + 1] +
                                        csoreList[i + 2]);
                                  }
                                  print(useThis);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FinishPage(
                                                score: useThis,
                                                listOfDgnz: superQZ,
                                              )));
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
                                itemCount:
                                    questions[questionIndex]['answers'].length,
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
                                        '${questions[questionIndex]['answers'][index]['answer']}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      onPressed: () {
                                        doAnswer();
                                        csoreList.add(questions[questionIndex]
                                            ['answers'][index]['score']);
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
