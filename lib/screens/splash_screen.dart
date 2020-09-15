import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'welcome_screen.dart';
import 'list_screen.dart';

class SplashScreen extends StatefulWidget {
  FlutterUi createState() => FlutterUi();
}

class FlutterUi extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListScreen(),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bgsplash.jpeg'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/bgsplash.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Image.asset('assets/logo_e2.png', width: 250.0, height: 250.0),
          Text(
            "E2Buddy",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50.0),
          ),
          Text(
            "Your Learning Partner",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.0),
          ),
        ],
      ),
    ));
  }
}
