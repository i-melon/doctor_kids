import 'package:flutter/material.dart';

class ChooseSymptop extends StatefulWidget {
  ChooseSymptop({super.key, required this.symptoms, required this.addSm});
  final List<String> symptoms;
  final Function addSm;

  @override
  State<ChooseSymptop> createState() => _ChooseSymptopState(addSm: addSm);
}

class _ChooseSymptopState extends State<ChooseSymptop> {
  _ChooseSymptopState({required this.addSm});
  final Function addSm;
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
