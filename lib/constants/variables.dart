import 'package:flutter/material.dart';
import 'dart:math' as math;

final userID = math.Random().nextInt(10000).toString();               // Generate random number for user ID
String userName = 'user_$userID';                                     // Generate a default username

