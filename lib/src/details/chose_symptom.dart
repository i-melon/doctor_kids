import 'package:doctor_kids/core/db.dart';
import 'package:flutter/material.dart';

class ChooseSymptop extends StatefulWidget {
  ChooseSymptop(
      {super.key,
      required this.symptoms,
      required this.addSm,
      required this.actDgnz});
  final List<String> symptoms;
  final Function addSm;
  final Function actDgnz;

  @override
  State<ChooseSymptop> createState() =>
      _ChooseSymptopState(addSm: addSm, actDgnz: actDgnz);
}

class _ChooseSymptopState extends State<ChooseSymptop> {
  _ChooseSymptopState({required this.addSm, required this.actDgnz});
  final Function addSm;
  final Function actDgnz;
  Set activeSm = {};
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(5),
      width: double.infinity,
      margin: EdgeInsets.all(100),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.black45,
            child: ListView.builder(
                itemCount: widget.symptoms.length,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 61, 61, 61)),
                    child: TextButton(
                      child: Text(
                        '${widget.symptoms[index]}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        addSm(widget.symptoms[index]);
                        setState(() {
                          widget.symptoms.remove(widget.symptoms[index]);
                        });
                        for (int i = 0; i < listOfDiagnoz.length; i++) {
                          for (int y = 0; y < 3; y++) {
                            if (listOfDiagnoz[i]['symptomps'][y]['name'] ==
                                widget.symptoms[index]) {
                              activeSm.add(listOfDiagnoz[i]);
                            }
                          }
                        }
                        actDgnz(activeSm.toList());
                      },
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
