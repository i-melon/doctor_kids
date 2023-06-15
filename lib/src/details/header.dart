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
            onPressed: () {},
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
            action: () {
              return showDialog<void>(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(50),
                    child: Center(
                      child: AlertDialog(
                        title: Text('ATTENTION'),
                        content: Container(
                          height: 100,
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('This function will availeble'),
                              Text('for moderators')
                            ],
                          )),
                        ),
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
            },
          )
        ],
      ),
    );
  }
}
