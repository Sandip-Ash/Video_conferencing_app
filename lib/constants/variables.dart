import 'dart:core';
import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:soul_conference/pages/new_meeting.dart';

import 'package:flutter/services.dart';

final userID = Random().nextInt(10000).toString();               // Generate random number for user ID
String userName = 'user_$userID';                                     // Generate a default username

String meetingCode = '';

void Copy(){
  final value = ClipboardData(text: meetingCode);
  Clipboard.setData(value);
}

// Generates a Random Valid String
String generateRandomString() {
  const letters = 'abcdefghijklmnopqrstuvwxyz';
  const numbers = '0123456789';
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';

  // Random generator
  Random random = Random();

  // Generate random letters
  String part_1() =>
      List.generate(3, (_) => letters[random.nextInt(letters.length)]).join();

  // Generate random numbers
  String part_2() =>
      List.generate(3, (_) => numbers[random.nextInt(numbers.length)]).join();

  String part_3() =>
      List.generate(3, (_) => chars[random.nextInt(chars.length)]).join();

  return '${part_1()}-${part_2()}-${part_3()}';
}

// Checks the generated String is valid or not
bool isValidFormat(String input) {
  // Regular expression to match the format
  final pattern = RegExp(r'^[a-z]{3}-[0-9]{3}-[a-z0-9]{3}$');
  return pattern.hasMatch(input);
}