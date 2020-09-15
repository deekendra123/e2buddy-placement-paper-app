import 'package:flutter/material.dart';
import 'view_answer_screen.dart';

class ResultScreen extends StatefulWidget {
  ResultState createState() => ResultState();
}

class ResultState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Demo User'),
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
                  top: 60,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "Verbal Reasoning",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 15,
                  right: 40,
                  bottom: 10,
                ),
                child:
                    Image.asset('assets/check.png', width: 70.0, height: 70.0),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 10,
                  right: 40,
                  bottom: 0,
                ),
                child: Text(
                  "Completed Successfully",
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
                  top: 0,
                  right: 40,
                  bottom: 20,
                ),
                child: Image.asset('assets/goforit.png',
                    width: 140.0, height: 140.0),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 0,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text(
                              "Total",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 5,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text(
                              "10",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 70,
                        child: VerticalDivider(color: Colors.white)),
                    Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 0,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text(
                              "Attemp",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 5,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text(
                              "6",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 70,
                        child: VerticalDivider(color: Colors.white)),
                    Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 0,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text(
                              "Correct",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 5,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text(
                              "4",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 70,
                        child: VerticalDivider(color: Colors.white)),
                    Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 0,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text(
                              "Wrong",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 5,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10, right: 0, bottom: 0),

                      child: SizedBox(
                        width: 150, // specific value
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.lightGreen)),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewAnswerScreen()),
                          ),
                          color: Colors.lightGreen,
                          textColor: Colors.white,
                          child: Text("View Answer".toUpperCase(),
                              style: TextStyle(fontSize: 14)),
                        ),
                      ),
                    ),

                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
