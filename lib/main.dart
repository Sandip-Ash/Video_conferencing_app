import 'package:flutter/material.dart';
import 'package:soul_conference/pages/front_page.dart';
import 'package:soul_conference/pages/join_meeting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: Joining_Page(),
      home: Front_Page(),
    );
  }
}
