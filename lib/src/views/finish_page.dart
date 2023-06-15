import 'package:doctor_kids/core/db.dart';
import 'package:doctor_kids/core/stert_button.dart';
import 'package:doctor_kids/src/details/header.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class FinishPage extends StatelessWidget {
  FinishPage({super.key, required this.listOfDgnz, required this.score});
  final List listOfDgnz;
  final List<int> score;
  Set docList = {};

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < listOfDoctors.length; i++) {
      for (int y = 0; y < listOfDgnz.length; y++) {
        for (int z = 0; z < listOfDoctors[i]['Diagnozes'].length; z++) {
          if (listOfDgnz[y]['name'] == listOfDoctors[i]['Diagnozes'][z]) {
            docList.add(listOfDoctors[i]);
          }
        }
      }
    }
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          child: Column(
            children: [
              Header(),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Possible diagnoz',
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
                    'Possible diagnoz',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black87,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Container(
                height: 180,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfDgnz.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 6,
                                color: (score[index] * 100) ~/ 15 > 50
                                    ? Colors.blue
                                    : Colors.yellow),
                            borderRadius: BorderRadius.circular(120),
                            color: const Color.fromARGB(255, 100, 100, 100)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${(score[index] * 100) ~/ 15}%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 40),
                              ),
                              Text(
                                listOfDgnz[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              )
                            ]),
                      );
                    }),
              ),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Doctors we reccomend',
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
                    'Doctors we reccomend',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black87,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 250, vertical: 30),
                padding: EdgeInsets.symmetric(vertical: 30),
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(30)),
                child: ListView.builder(
                    itemCount: docList.toList().length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                child: CircleAvatar(
                                  radius: 40,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      docList.toList()[index]["name"],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      'Experience: ${docList.toList()[index]["Experience"]}',
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 151, 151, 151),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      'Price: ${docList.toList()[index]["price"]} tg',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 92, 122, 79),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Center(
                              child: Container(
                                width: double.infinity,
                                height: 90,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: int.tryParse(
                                        docList.toList()[index]["rating"]),
                                    itemBuilder: (context, index) {
                                      return Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      );
                                    }),
                              ),
                            )),
                            Expanded(
                                child: Container(
                              child: StartButton(
                                name: 'Connect',
                                action: () {},
                              ),
                            ))
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _DiagramPainter extends CustomPainter {
  _DiagramPainter({
    required this.dotRadius,
    required this.startBarRadius,
    required this.layers,
    required this.layersSpacing,
    required this.dotsSpacing,
    required this.progress,
    required Color dotColor,
    required Color progressDotColor,
  })  : _paint = Paint()
          ..color = dotColor
          ..style = PaintingStyle.fill,
        _progressPaint = Paint()
          ..color = progressDotColor
          ..style = PaintingStyle.fill,
        _dotDiameter = dotRadius * 2,
        _dotsSizeWithSpacing = dotRadius * 2 + dotsSpacing;

  final double dotRadius;
  final double startBarRadius;
  final int layers;
  final double layersSpacing;
  final double dotsSpacing;
  final double progress;

  final Paint _paint;
  final Paint _progressPaint;

  final double _dotDiameter;
  final double _dotsSizeWithSpacing;

  static const _startAngle = 270.0;
  static const _circle = 360.0;
  static const _halfCircle = 180.0;

  @override
  void paint(Canvas canvas, Size size) {
    // implement this later
  }

  @override
  bool shouldRepaint(covariant _DiagramPainter oldDelegate) =>
      dotRadius != oldDelegate.dotRadius ||
      startBarRadius != oldDelegate.startBarRadius ||
      layers != oldDelegate.layers ||
      layersSpacing != oldDelegate.layersSpacing ||
      dotsSpacing != oldDelegate.dotsSpacing ||
      progress != oldDelegate.progress;
}
