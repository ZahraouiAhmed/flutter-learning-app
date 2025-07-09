import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/notifyers.dart';
import 'package:flutter_application_3/pages/home.dart';
import 'package:lottie/lottie.dart';


class settings extends StatelessWidget {
  const settings({super.key,
  required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("settings"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Column(
          children: [
              DrawerHeader(
                child: Icon(Icons.menu_book)
                ),
                ListTile(
                  leading: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) {
                     return home();
                   },
                   ),
                   );
                },
                ),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('S E T T I N G S'),
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text('A C C O U N T'),
                ),
          ],
        ),
        ),
        
      body: Center(
        child: Column(
          children: [
            Lottie.asset("assets/lotties/login.json"),
            ValueListenableBuilder(
            valueListenable: changed,
            builder: (context, value, child) {
              return Text('this is it bi ihdhni allah $value');
            },
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(65),
              child: Hero(tag: "special", child: Image.asset(
                "assets/images/me.JPG"
              ),
              ),
            )
          ],
        ),

       ),
    );
  }
}
