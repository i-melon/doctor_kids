import 'package:doctor_kids/core/stert_button.dart';
import 'package:flutter/material.dart';

class AttentionBlock extends StatelessWidget {
  const AttentionBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        children: [
          Icon(
            Icons.health_and_safety_outlined,
            size: 250,
            color: Colors.green[200],
          ),
          Expanded(
              child: Container(
            child: Text(
              'The project is not a substitute for a real medical examination. When treating, you can not refer to the solution of our software, it was created strictly for consultation. When treating, it is worth contacting real specialists.',
              style: TextStyle(
                  color: Colors.green[200],
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Text(
                  'ATTENTION!',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 198, 105, 105),
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                StartButton(
                  name: 'CONTACT US',
                  action: () {},
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
