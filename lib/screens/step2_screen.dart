import 'package:flutter/material.dart';
import 'step1_screen.dart';

class Step2Screen extends StatefulWidget {

  Step2State createState() => Step2State();
}

class Step2State extends State<Step2Screen>{
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
                  "Successfully Applied".toUpperCase(),
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
                  top: 10,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "For Android Developer",
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
                  top: 40,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "You will receive a response on this next 96 hours. Stay Tuned",
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
                  top: 40,
                  right: 40,
                  bottom: 0,
                ),
                child: SizedBox(
                  width: 150, // specific value
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.lightGreen)),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Step1Screen()),
                    ),
                    color: Colors.lightGreen,
                    textColor: Colors.white,
                    child: Text("NEXT".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}