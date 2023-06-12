import 'package:flutter/material.dart';

class Advantages extends StatelessWidget {
  const Advantages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 150, vertical: 50),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(137, 95, 95, 95)),
      child: Row(children: [
        Expanded(
            child: Container(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(20),
                height: 120,
                child: Center(
                    child: Text(
                  'SUPER FAST',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 114, 161, 115)),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(20),
                height: 120,
                child: Center(
                    child: Text('STAY HOME',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700))),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 91, 123, 135)),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(20),
                height: 120,
                child: Center(
                    child: Text('FREE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700))),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 128, 140, 94)),
              ))
            ],
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HOW WE CAN HELP?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Our project will help you find the approximate diseases that best match the child\'s symptoms. In addition, you will be given a list of doctors who can help you.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ))
      ]),
    );
  }
}
