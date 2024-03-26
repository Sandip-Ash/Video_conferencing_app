import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:soul_conference/constants/variables.dart';

import '../constants/colors.dart';
import 'join_meeting.dart';

class New_Meeting extends StatefulWidget {
  const New_Meeting({Key? key}) : super(key: key);

  @override
  State<New_Meeting> createState() => _New_MeetingState();
}

class _New_MeetingState extends State<New_Meeting> {
  @override
  Widget build(BuildContext context) {
    void updateTextVar() {    // Update the Meeting ID
      setState(() {
        meetingCode = generateRandomString(); // Update the state variable
      });
    }

    String sharedMessage = 'Please use the following Meeting ID to join our video conference on Soul Conference \n\nMeeting ID: $meetingCode';

    Share_Code(){             // Share the meeting ID via other Apps
      Share.share(sharedMessage);
    }

    void checkCallingID() {
      print('Meeting Code: $meetingCode');

      if(meetingCode == ''){      // Check whether the Calling ID is Empty or not
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Invalid Calling ID'),
              content: Text('Please generate a Calling ID'),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
        );
      }
      else{
        Share_Code();
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
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ListTile(
                  leading: IconButton(
                    onPressed: updateTextVar,
                    icon: Icon(Icons.link)
                  ),

                  title: Center(
                    child: SelectableText(
                      meetingCode,
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    ),
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
                onPressed: (){
                  checkCallingID();
                },
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
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Joining_Page(),));
                },
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
