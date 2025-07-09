import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/settings.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
double swit = 0.0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('home'),
        centerTitle: true,
        backgroundColor: Colors.purple
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Hero(
                  tag: "special",
                  child: Image.asset(
                    "assets/images/me.JPG")),
              ),
            ),
           
            IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return settings(title: "somtineg",);
                },
                ),
                );
            }, icon: Icon(Icons.settings_accessibility),
            )

          ],
          
        )
        
      ),
    );
  }
}