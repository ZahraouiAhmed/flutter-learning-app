import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/notifyers.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
bool? ischecked = true;
bool newvalue = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     appBar: AppBar(
      centerTitle: true,
      title: Text('the profile page'),
      backgroundColor: Colors.blueAccent,
     ),
     floatingActionButton: FloatingActionButton(
      onPressed: (){
        print(changed.value);
        if (changed.value){
          changed.value=false;
        } else{
          changed.value=true;
        }
      },
        child: Icon(Icons.padding),
     ),
     body: Column(
      children: [
        Checkbox(
          value: ischecked, 
          onChanged: (value) {
          setState(() {
            ischecked= value;
          });
        },
        ),
        Switch(
          value: newvalue, 
        onChanged: (uservalue) {
        setState(() {
          newvalue=uservalue;

        });
        },)
      ],
     ),
      
     );
     
  
  }
}
