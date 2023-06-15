import 'package:doctor_kids/core/stert_button.dart';
import 'package:doctor_kids/src/details/chose_symptom.dart';
import 'package:doctor_kids/src/details/header.dart';
import 'package:doctor_kids/src/views/quiz.dart';
import 'package:flutter/material.dart';
import 'package:doctor_kids/core/db.dart';

class FormPage extends StatefulWidget {
  FormPage({super.key, required this.newSm});
  final List<String> newSm;

  @override
  State<FormPage> createState() => _FormPageState(symptoms: newSm);
}

class _FormPageState extends State<FormPage> {
  final List<String> symptoms;
  List<String> choosedSymptoms = [];
  List actDiagnz = [];

  _FormPageState({required this.symptoms});
  void makeChoose(String newSm) {
    setState(() {
      choosedSymptoms.add(newSm);
    });
  }

  void makeDgnz(List a) {
    actDiagnz = a;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Header(),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Chose symptoms',
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
                    'Chose symptoms',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black87,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              ChooseSymptop(
                symptoms: symptoms,
                addSm: makeChoose,
                actDgnz: makeDgnz,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: choosedSymptoms.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                margin: EdgeInsets.all(20),
                                height: 100,
                                child: Center(
                                    child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                      '${choosedSymptoms[choosedSymptoms.length - 1 - index]}',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700)),
                                )),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color.fromARGB(
                                        255, 100 * index, 123, 135)),
                              );
                            }),
                      ),
                    ),
                    StartButton(
                        name: 'NEXT',
                        action: () {
                          if (choosedSymptoms.isEmpty) {
                            return showDialog<void>(
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.all(50),
                                  child: Center(
                                    child: AlertDialog(
                                      title: Text(
                                          'You must chose at least one symptom'),
                                      actions: [
                                        StartButton(
                                            name: 'OK',
                                            action: () {
                                              Navigator.of(context).pop();
                                            })
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            print(actDiagnz[0]['name']);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz(
                                          superQz: actDiagnz,
                                        )));
                          }
                        })
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
