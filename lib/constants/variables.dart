import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/services.dart';

final userID = math.Random().nextInt(10000).toString();               // Generate random number for user ID
String userName = 'user_$userID';                                     // Generate a default username

String meetingCode = 'abc123';

void Copy(){
  final value = ClipboardData(text: meetingCode);
  Clipboard.setData(value);
}