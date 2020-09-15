import 'package:flutter/material.dart';
import 'step2_screen.dart';
import 'step3_screen.dart';

class Step1Screen extends StatefulWidget {
  Step1State createState() => Step1State();
}

class Step1State extends State<Step1Screen>{
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
                  top: 95,
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
                  "Thank you for Applying for",
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
                  "Android Development Internship",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
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
                  "We received a huge number of enquiries.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,),
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
                  "Unfortunately, We couldn't accept yours this time",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,),
                ),
              ),




//              Align(
//                alignment: Alignment.bottomCenter,
//                child:  Padding(
//                  padding: const EdgeInsets.only(
//                    left: 40,
//                    top: 40,
//                    right: 40,
//                    bottom: 0,
//                  ),
//                  child: Text(
//                    "But don't get dishearten, you can again apply for Internship after 72 hours",
//                    textAlign: TextAlign.center,
//                    style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 14.0,
//                        fontWeight: FontWeight.bold),
//                  ),
//                ),
//              ),

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
                        builder: (context) => Step3Screen()),
                  ),
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  child: Text("NEXT".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
              ),
              ),

              Expanded(
                child: Align(

                  alignment: Alignment.bottomCenter,

                 child: Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      top: 10,
                      right: 40,
                      bottom: 10,
                    ),
                   child: Text(
                     "But don't get dishearten, you can again apply for Internship after 72 hours",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 14.0,
                         fontWeight: FontWeight.bold),
                   ),
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