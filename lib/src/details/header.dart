import 'package:doctor_kids/core/stert_button.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  'DOCTOR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                Text('KIDS',
                    style: TextStyle(
                        color: Color.fromARGB(255, 169, 235, 188),
                        fontSize: 30,
                        fontWeight: FontWeight.w100))
              ],
            ),
          ),
          StartButton(
            name: 'START',
          )
        ],
      ),
    );
  }
}
