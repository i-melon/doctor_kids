import 'package:doctor_kids/core/stert_button.dart';
import 'package:doctor_kids/core/symptoms.dart';
import 'package:doctor_kids/src/details/chose_symptom.dart';
import 'package:doctor_kids/src/details/header.dart';
import 'package:doctor_kids/src/views/quiz.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  List<String> symptoms = listOfSymptoms;
  List<String> choosedSymptoms = [];
  void makeChoose(String newSm) {
    setState(() {
      choosedSymptoms.add(newSm);
    });
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
              ChooseSymptop(
                symptoms: symptoms,
                addSm: makeChoose,
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
                                  onPressed: () {
                                    setState(() {
                                      symptoms.add(choosedSymptoms[index]);
                                      choosedSymptoms
                                          .remove(choosedSymptoms[index]);
                                    });
                                  },
                                  child: Text('${choosedSymptoms[index]}',
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz()));
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
