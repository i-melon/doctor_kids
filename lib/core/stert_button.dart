import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 143, 227, 168),
              Color.fromARGB(255, 108, 121, 215),
              Color.fromARGB(255, 144, 177, 67)
              //add more colors
            ]),
            borderRadius: BorderRadius.circular(25),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                  blurRadius: 5) //blur radius of shadow
            ]),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
              //make color or elevated button transparent
            ),
            onPressed: () {
              print("START");
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
              child: Text("$name",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w900)),
            )));
  }
}
