import 'package:e2buddyplacementpaper/screens/question_screen.dart';
import 'package:flutter/material.dart';
import '';

class HomeScreen extends StatelessWidget {
  String color = "#88ccfc".replaceAll('#', '0xff');

  final List<String> numbers = [
    "Verbal Reasoning",
    "Quantitative Ability",
    "Logical Reasoning",
    "Aptitude"
  ];

  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(left: 20.0, top: 25.0, right: 0, bottom: 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("MOST POPULAR",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(left: 15.0, top: 15.0, right: 0, bottom: 10),
            height: 160,
            child: SizedBox(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Container(
                        width: 140.0,
                        child: Card(
                          color: Colors.blue,
                          child: Container(
                            child: Center(
                                child: Text(
                              numbers[index].toString(),
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                      onTap: () => {getItemAndNavigate(context)},
                    );
                  }),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 0, bottom: 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("TOP RECRUITER",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            padding:
            EdgeInsets.only(left: 15.0, top: 15.0, right: 0, bottom: 10),
            height: 160,
            child: SizedBox(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Container(
                        width: 140.0,
                        child: Card(
                          color: Colors.blue,
                          child: Container(
                            child: Center(
                                child: Text(
                                  numbers[index].toString(),
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                      onTap: () => {getItemAndNavigate(context)},
                    );
                  }),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 0, bottom: 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("FEATURED",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            padding:
            EdgeInsets.only(left: 15.0, top: 15.0, right: 0, bottom: 10),
            height: 160,
            child: SizedBox(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Container(
                        width: 140.0,
                        child: Card(
                          color: Colors.blue,
                          child: Container(
                            child: Center(
                                child: Text(
                                  numbers[index].toString(),
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                      onTap: () => {getItemAndNavigate(context)},
                    );
                  }),
            ),
          ),
        ],
      )),
    );
  }

  getItemAndNavigate(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QuestionScreen()));
  }
}

