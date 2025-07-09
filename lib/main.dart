import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/notifyers.dart';
import 'package:flutter_application_3/pages/settings.dart';
import 'package:flutter_application_3/pages/home.dart';
import "package:flutter_application_3/pages/profile.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: changed,
      builder: (context, value, child) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
           brightness: changed.value? Brightness.dark : Brightness.light
          
          
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
        
      );
      }
    );
    
  }
}






class MyHomePage extends StatefulWidget{

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count= 0 ;

      final List pages =[
          settings(title: "someting",),
          home(),
          Profile(),
       ];

      void setcount(int index){
        setState(() {
          count = index;  
        });
      }
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 44, 112, 168),
      appBar: AppBar(
        title: Text('data'),
        backgroundColor: Colors.greenAccent,
        leading: Icon(Icons.face_3_sharp),
        actions: [
          Icon(Icons.add,
          color: Colors.amberAccent,
          applyTextScaling: false,
          ),
          Icon(Icons.face_3_sharp),

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
     onTap: setcount,
     currentIndex: count,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: 'settings',
           ),
           
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "home",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: 'profile'
          ),
        ] ,
        ),
        
      body: pages[count]
     
      
   
        
    );
  }
}