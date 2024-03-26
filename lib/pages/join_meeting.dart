import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soul_conference/constants/colors.dart';
import 'package:soul_conference/constants/variables.dart';
import 'call_page.dart';

class Joining_Page extends StatefulWidget {
  const Joining_Page({Key? key}) : super(key: key);

  @override
  State<Joining_Page> createState() => _Joining_PageState();
}

class _Joining_PageState extends State<Joining_Page> {

  late TextEditingController callingID = TextEditingController();
  final username = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void Paste()async{
      final data = await Clipboard.getData('text/plain');
      if(data != null){
        setState(() {
          callingID.text = data.text ?? '';
        });
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
        child: Column(
          children: [
            Image.asset('assets/images/join_meeting.png', width: 150,),

            const SizedBox(
              height: 20,
            ),

            Text('Enter The Joining Code', style: TextStyle(fontSize: 20),),
            const SizedBox(
              height: 20,
            ),

            TextFormField(
              controller: username,
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(fontSize: 20),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            TextFormField(
              controller: callingID,
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Enter Meeting ID',
                hintStyle: TextStyle(fontSize: 20),
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            ElevatedButton(
              onPressed: (){
                checkCallingID();
                userName = username.text.toString();
                Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage(callID: callingID.text.toString())));
              },
              child: Text('Join', style: TextStyle(color: Colors.white, fontSize: 20),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: purple
              ),
            )
          ],
        ),
      ),
    );
  }

  void checkCallingID() {
    if(callingID.text.toString().isEmpty){
      AlertDialog(
        title: Text('Invalid Calling ID'),
        content: Text('Calling ID field should not be empty...'),
        actions: [
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('OK'))
        ],
      );
    }
  }
}
