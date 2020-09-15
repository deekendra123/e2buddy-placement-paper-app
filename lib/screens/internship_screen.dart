import 'package:e2buddyplacementpaper/screens/step1_screen.dart';
import 'package:flutter/material.dart';
import 'step1_screen.dart';
import 'step2_screen.dart';

class InternshipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child:  Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 30.0, left: 25.0, right: 0, bottom: 10.0),
                  child:  Text(
                    '  Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 0, left: 28.0, right: 0, bottom: 0),
                  child:   Text(
                    '  Get an Internship',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),


              Container(
                  height: 80.0,
                  padding: EdgeInsets.only(
                      left: 30.0, top: 30.0, right: 30.0, bottom: 0.0),
                  child: new Theme(
                    data: new ThemeData(
                      primaryColor: Color(0xFFB3B1B1),
                      primaryColorDark: Color(0xFFB3B1B1),
                    ),
                    child: new TextField(
                      enabled: false,
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide:
                            new BorderSide(width: 0.5, color: Colors.white)),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 0.5, color: Colors.white),
                        ),
                        hintText: '',
                        labelText: 'Enter Name',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        labelStyle: TextStyle(fontSize: 16, color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 40.0),
                    margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            width: 0.5, color: Colors.lightBlue.shade50),
                        bottom: BorderSide(
                            width: 0.5, color: Colors.lightBlue.shade50),
                        right: BorderSide(
                            width: 0.5, color: Colors.lightBlue.shade50),
                        left: BorderSide(
                            width: 0.5, color: Colors.lightBlue.shade50),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: DropdownButton(
                      underline: SizedBox(),
                      iconEnabledColor: Colors.white,
                      isExpanded: true,
                      hint: Text(
                        '  Select Domain',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      items: <String>[
                        'Android Developer',
                        'Web Developer',
                        'React Developer',
                        'Flutter Developer',
                        'Swift Developer'
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(
                            '  $value',
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40.0, left: 40.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 40.0),
                    margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            width: 0.5, color: Colors.lightBlue.shade50),
                        bottom: BorderSide(
                            width: 0.5, color: Colors.lightBlue.shade50),
                        right: BorderSide(
                            width: 0.5, color: Colors.lightBlue.shade50),
                        left: BorderSide(
                            width: 0.5, color: Colors.lightBlue.shade50),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: DropdownButton(
                      underline: SizedBox(),
                      iconEnabledColor: Colors.white,
                      isExpanded: true,
                      hint: Text(
                        '  Select Duration',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      items: <String>[
                        '1 month',
                        '2 month',
                        '3 month',
                        '4 month',
                        '5 month'
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(
                            '  $value',
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40.0, left: 40.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5, top: 10, right: 0, bottom: 0),
                      child: SizedBox(
                        width: 150, // specific value
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.lightGreen)),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Step2Screen()),
                          ),
                          color: Colors.lightGreen,
                          textColor: Colors.white,
                          //color: Color(int.parse(color)),
                          child: Text("NEXT", style: TextStyle(fontSize: 14)),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      )


         );
  }
}
