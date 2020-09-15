import 'package:flutter/material.dart';
import 'result_screen.dart';

class ViewAnswerScreen extends StatefulWidget {
  ViewAnswerState createState() => ViewAnswerState();
}

class ViewAnswerState extends State<ViewAnswerScreen> {
  String question1 = "Hitler party which came into power in 1933 is known as";
  String question2 =
      "For which of the following disciplines is Nobel Prize awarded?";
  String question3 =
      "Grand Central Terminal, Park Avenue, New York is the world's";
  String question4 = "Garampani sanctuary is located at";
  String answer = 'Answer : Labour Party';


  List<String> question1Option = [
    'Labour Party',
    'Nazi Party',
    'Ku-Klux-Klan',
    'Democratic Party',
  ];
  List<String> question2Option = [
    'Physics and Chemistry',
    'Physiology or Medicine',
    'Literature, Peace and Economics',
    'All of the above',
  ];
  List<String> question3Option = [
    'largest railway station',
    'highest railway station',
    'longest railway station',
    'None of the above',
  ];
  List<String> question4Option = [
    'Junagarh, Gujarat',
    'Diphu, Assam',
    'Kohima, Nagaland',
    'Gangtok, Sikkim',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Demo User'),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: ListView(
        padding: EdgeInsets.all(5.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            width: 160.0,
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.deepPurpleAccent,
              child: Center(
                  child: Column(
                children: <Widget>[
                  Center(
                      child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 10,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Text(
                        "Question 1 : ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 10,
                              right: 5,
                              bottom: 0,
                            ),
                            child: Text(
                              question1,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
                  Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 0, top: 10, right: 5.0, bottom: 0),
                            child: SizedBox(
                                width: 150,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)),
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  padding: EdgeInsets.only(
                                      left: 10, top: 0, right: 10, bottom: 0),
                                  onPressed: () {},
                                  child: Text(
                                    "Option 1",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 10, right: 0, bottom: 0),

                            child: SizedBox(
                              width: 150, // specific value
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.lightGreen)),
                                onPressed: () {},
                                color: Colors.lightGreen,
                                textColor: Colors.white,
                                child: Text("Option 3",
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            width: 160.0,
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.deepPurpleAccent,
              child: Center(
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 10,
                                right: 0,
                                bottom: 0,
                              ),
                              child: Text(
                                "Question 2 : ",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 17.0),
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      top: 10,
                                      right: 5,
                                      bottom: 0,
                                    ),
                                    child: Text(
                                      question2,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                      Container(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0, top: 10, right: 5.0, bottom: 0),
                                child: SizedBox(
                                    width: 150,
                                    child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                          side: BorderSide(color: Colors.red)),
                                      color: Colors.red,
                                      textColor: Colors.white,
                                      padding: EdgeInsets.only(
                                          left: 10, top: 0, right: 10, bottom: 0),
                                      onPressed: () {},
                                      child: Text(
                                        "Option 1",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 10, right: 0, bottom: 0),

                                child: SizedBox(
                                  width: 150, // specific value
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.lightGreen)),
                                    onPressed: () {},
                                    color: Colors.lightGreen,
                                    textColor: Colors.white,
                                    child: Text("Option 3",
                                        style: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            width: 160.0,
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.deepPurpleAccent,
              child: Center(
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 10,
                                right: 0,
                                bottom: 0,
                              ),
                              child: Text(
                                "Question 3 : ",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 17.0),
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      top: 10,
                                      right: 5,
                                      bottom: 0,
                                    ),
                                    child: Text(
                                      question3,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                      Container(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0, top: 10, right: 5.0, bottom: 0),
                                child: SizedBox(
                                    width: 150,
                                    child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                          side: BorderSide(color: Colors.lightGreen)),
                                      color: Colors.lightGreen,
                                      textColor: Colors.white,
                                      padding: EdgeInsets.only(
                                          left: 10, top: 0, right: 10, bottom: 0),
                                      onPressed: () {},
                                      child: Text(
                                        "Option 1",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 10, right: 0, bottom: 0),

                                child: SizedBox(
                                  width: 150, // specific value
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.red)),
                                    onPressed: () {},
                                    color: Colors.red,
                                    textColor: Colors.white,
                                    child: Text("Option 3",
                                        style: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            width: 160.0,
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.deepPurpleAccent,
              child: Center(
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 10,
                                right: 0,
                                bottom: 0,
                              ),
                              child: Text(
                                "Question 4 : ",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 17.0),
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      top: 10,
                                      right: 5,
                                      bottom: 0,
                                    ),
                                    child: Text(
                                      question4,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                      Container(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0, top: 10, right: 5.0, bottom: 0),
                                child: SizedBox(
                                    width: 150,
                                    child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                          side: BorderSide(color: Colors.red)),
                                      color: Colors.red,
                                      textColor: Colors.white,
                                      padding: EdgeInsets.only(
                                          left: 10, top: 0, right: 10, bottom: 0),
                                      onPressed: () {},
                                      child: Text(
                                        "Option 1",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 10, right: 0, bottom: 0),

                                child: SizedBox(
                                  width: 150, // specific value
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.lightGreen)),
                                    onPressed: () {},
                                    color: Colors.lightGreen,
                                    textColor: Colors.white,
                                    child: Text("Option 3",
                                        style: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
