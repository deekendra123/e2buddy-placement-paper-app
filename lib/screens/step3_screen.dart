import 'package:flutter/material.dart';
import 'step1_screen.dart';

class Step3Screen extends StatefulWidget {
  Step3State createState() => Step3State();
}

class Step3State extends State<Step3Screen>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("E2Buddy"),
        backgroundColor: Colors.black,
      ),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 15,
                  right: 40,
                  bottom: 10,
                ),
                child:
                Image.asset('assets/tick.png', width: 90.0, height: 90.0),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 10,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "CONGRATULATIONS".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 50,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "You have been selected for",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 10,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "Android Development Internship.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 80,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "START DATE : 20-08-2020",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 10,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "END DATE : 20-12-2020",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}