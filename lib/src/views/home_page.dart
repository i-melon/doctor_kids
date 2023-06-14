import 'package:doctor_kids/src/details/advantages.dart';
import 'package:doctor_kids/src/details/attention.dart';
import 'package:doctor_kids/src/details/header.dart';
import 'package:doctor_kids/src/details/start.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.newSm});
  final List<String> newSm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          child: Column(
            children: [
              Header(),
              StartBlock(
                newSm: newSm,
              ),
              Advantages(),
              AttentionBlock(),
            ],
          ),
        ),
      ),
    );
  }
}
