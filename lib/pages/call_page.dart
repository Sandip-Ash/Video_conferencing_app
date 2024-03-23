import 'package:flutter/material.dart';
import 'package:soul_conference/constants/variables.dart';
// import 'dart:math' as math;
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 2012881213, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "54befb5ae7d8d7fa14fafee54a275d4339f23997a1d6517aa046e1abe940509b", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userID,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall(),
    );
  }
}
