import 'package:doctor_kids/core/stert_button.dart';
import 'package:doctor_kids/src/views/home_page.dart';
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
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
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
          ),
          StartButton(
            name: 'MENU',
            action: () {},
          )
        ],
      ),
    );
  }
}
