import 'package:doctor_kids/core/stert_button.dart';
import 'package:doctor_kids/src/views/form_page.dart';
import 'package:flutter/material.dart';

class StartBlock extends StatelessWidget {
  const StartBlock({super.key, required this.newSm});
  final List<String> newSm;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 120),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'FREE DIAGNOSTIC',
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
                      'FREE DIAGNOSTIC',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black87,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 35),
                  child: Text(
                    'Answer the questions, fill out a short survey, and we can predict your childs illness in 5 minutes.',
                    style: TextStyle(
                        color: Colors.green[200],
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                StartButton(
                  name: 'START',
                  action: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FormPage(newSm: newSm,)));
                  },
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/3f79/b84d/3d81c5662a41bcf86efb666353fe17be?Expires=1687737600&Signature=FJgjqksn7kX9YfvLMZuTdofsFGd687pFFb1uuIdv7YUpA0Ji8N5PnPyG16YtPd6LEvLBpFOFiMivIW84xBHnG97yo5u2G~FMHqWF8p3gSNBi37WGKI8U2yzALzsxJS4ZDZIq93VpvD30uSGt0SSV88u6eBtgjJbN41yoO5uXdjEvDNMgJKUNe793QVd9Qsil4YFv7fC7InHyZJopcM3rNDu5p50aSuxdTwgwUoqKJHO5ytLVIXsNiFGoRHiK0MvfO9MQiJitGulQ2egHax4F~Rk03pJh7t2Yac9jd7fvFFxnQ~uX95Hk0JtYGKskjJnvALdD06jfDIkqcp6wpzzKrw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
              fit: BoxFit.cover,
            ),
          ))
        ],
      ),
    );
  }
}
