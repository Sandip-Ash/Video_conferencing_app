import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soul_conference/constants/variables.dart';

import '../constants/colors.dart';

class New_Meeting extends StatefulWidget {
  const New_Meeting({Key? key}) : super(key: key);

  @override
  State<New_Meeting> createState() => _New_MeetingState();
}

class _New_MeetingState extends State<New_Meeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 40,
              ),

              Center(
                  child: Image.asset('assets/images/new_meeting.png', fit: BoxFit.cover, width: 200)
              ),

              const SizedBox(
                height: 20,
              ),

              const Center(
                  child: Text('Generate Joining Code', style: TextStyle(fontSize: 20),)
              ),

              const SizedBox(
                height: 20,
              ),

              Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ListTile(
                  leading: Icon(Icons.link),
                  title: SelectableText(
                    meetingCode,
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy),
                    onPressed: (){
                      Copy();
                    },
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              ElevatedButton.icon(
                onPressed: (){},
                icon: const Icon(Icons.share, color: Colors.white, size: 25,),
                label: const Text('Share Invite', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
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

              ElevatedButton.icon(
                onPressed: (){},
                icon: const Icon(Icons.video_call_outlined, color: Colors.white, size: 25,),
                label: const Text('Join Meeting', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(40),
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
