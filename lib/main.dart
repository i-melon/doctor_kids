import 'dart:js_interop';

import 'package:doctor_kids/core/db.dart';
import 'package:doctor_kids/src/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // FirebaseDatabase database = FirebaseDatabase.instance;
  Set<String> dbSymptoms = {};
  for (int i = 0; i < listOfDiagnoz.length; i++) {
    for (int y = 0; y < 3; y++) {
      dbSymptoms.add(listOfDiagnoz[i]['symptomps'][y]['name']);
    }
  }

  // DatabaseReference ref = database.ref();
  // final snapshot = ref.child('diagnoz').get();
  // if (snapshot.isNull) {
  //   print('there is nithing');
  // } else {
  //   print('hi there');
  // }

  runApp(MaterialApp(
    home: HomePage(
      newSm: dbSymptoms.toList(),
    ),
  ));
}
