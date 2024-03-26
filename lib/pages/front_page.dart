import 'package:flutter/material.dart';
import 'package:soul_conference/pages/join_meeting.dart';
import 'package:soul_conference/pages/new_meeting.dart';

class Front_Page extends StatelessWidget {
  const Front_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Soul Conferencing', style: TextStyle(color: Colors.deepPurple),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth/9),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 40,
              ),

              ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => New_Meeting(),));
                },
                icon: const Icon(Icons.add, color: Colors.white, size: 30,),
                label: const Text('New Meeting', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromHeight(40),
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              OutlinedButton.icon(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Joining_Page(),));
                },
                icon: const Icon(Icons.video_call, size: 25,),
                label: const Text('Join a meeting', style: TextStyle(fontSize: 20, color: Colors.deepPurple),),
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size.fromHeight(40),
                  side: const BorderSide(width: 2, color: Colors.deepPurple),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),

              const SizedBox(
                height: 100,
              ),

              Image.asset('assets/images/online_meeting_img.png'),
            ],
          ),
        ),
      ),
    );
  }
}
