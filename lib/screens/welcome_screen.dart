
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'question_screen.dart';
import 'bottom_screen.dart';


class WelcomeScreen extends StatelessWidget {
  var text1 = 'Welcome to World of Learning';
  var text2 =
      "You will receive Placement Preparation Content for the following Companies";


  List<String> companies = [
    "Accenture",
    "Adobe",
    "Amazon",
    "Flipkart",
    "BSNL",
    "Amdocs",
    "Cognizent",
    "Infosys",
    "Cisco",
    "IBM",
    "L&T",
    "GE",
    "SAP",
    "Sumsung",
    "MindTree",
    "TCS",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        title: new Text('E2Buddy'),
        backgroundColor: Colors.black,
      ),
      body: Container(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/logo_e2_white.png', width: 150.0, height: 150.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 0,
              right: 40,
              bottom: 0,
            ),
            child: Text(
              text1,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 0, top: 20.0, right: 0, bottom: 0),
            child: Container(
              height: 0.3,
              width: 360.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 20.0, right: 30.0, bottom: 0),
            child: Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                child: GridView.count(
                    padding: const EdgeInsets.only(
                        left: 20, top: 40, right: 10, bottom: 0),
                    crossAxisSpacing: 50.5,
                    crossAxisCount: 4,
                    children: companies.map((String url) {
                      return GridTile(
                          child: Text(url,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              )));
                    }).toList()),
              ),
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
                            builder: (context) => BottomScreen()),
                      ),
                      color: Colors.lightGreen,
                      textColor: Colors.white,
                      //color: Color(int.parse(color)),
                      child: Text("NEXT",
                          style: TextStyle(fontSize: 14)),
                    ),
                  ),
                ),

              )
          )
        ],
      ))),
    );
  }
}
