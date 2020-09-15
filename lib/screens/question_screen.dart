import 'package:e2buddyplacementpaper/screens/answer_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';
import 'answer_review_screen.dart';

class QuestionScreen extends StatefulWidget {
  QuestionState createState() => QuestionState();
}

class QuestionState extends State<QuestionScreen> {
  String question1 =  "Question1 : Hitler party which came into power in 1933 is known as";
  String question2 =  "Question2 : For which of the following disciplines is Nobel Prize awarded?";
  String question3 =  "Question3 : Grand Central Terminal, Park Avenue, New York is the world's";
  String question4 =  "Question4 : Garampani sanctuary is located at";

  String color = "#88ccfc".replaceAll('#', '0xff');

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
        title: Text('E2Buddy'),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: ListView(
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
                  Container(
                    padding: EdgeInsets.only(
                        left: 25.0, top: 15.0, right: 0, bottom: 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          question1,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 25.0, top: 15.0, right: 0, bottom: 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GroupedCheckbox(
                        itemList: question1Option,
                        orientation: CheckboxOrientation.VERTICAL,
                        checkColor: Colors.blue,
                        activeColor: Colors.white,
                        disabled: ['White'],
                        onChanged: (itemList) {
//                          setState(() {
//                            print('SELECTED ITEM LIST $itemList');
//                          });
                        },
                        textStyle: TextStyle(color: Colors.white),
                        tristate: false,


                      ),


                    ),
                  ),
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
                      Container(
                        padding: EdgeInsets.only(
                            left: 25.0, top: 15.0, right: 0, bottom: 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              question2,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 25.0, top: 15.0, right: 0, bottom: 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: GroupedCheckbox(
                            itemList: question2Option,
                            orientation: CheckboxOrientation.VERTICAL,
                            checkColor: Colors.blue,
                            activeColor: Colors.white,
                            onChanged: (itemList) {
                              setState(() {
                                print('SELECTED ITEM LIST $itemList');
                              });
                            },
                            textStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
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
                      Container(
                        padding: EdgeInsets.only(
                            left: 25.0, top: 15.0, right: 0, bottom: 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              question3,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 25.0, top: 15.0, right: 0, bottom: 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: GroupedCheckbox(
                            itemList: question3Option,
                            orientation: CheckboxOrientation.VERTICAL,
                            checkColor: Colors.blue,
                            activeColor: Colors.white,
                            onChanged: (itemList) {
                              setState(() {
                                print('SELECTED ITEM LIST $itemList');
                              });
                            },
                            textStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )),
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
                            side: BorderSide(color: Color(int.parse(color)))),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnswerReviewScreen()),
                        ),
                       // color: Colors.lightGreen,
                        color: Color(int.parse(color)),
                        textColor: Colors.white,
                        child: Text("SUBMIT",
                            style: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                  )
              )

        ],
      )),
    );
  }
}

