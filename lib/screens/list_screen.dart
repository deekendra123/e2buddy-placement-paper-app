import 'package:e2buddyplacementpaper/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'welcome_screen.dart';

class ListScreen extends StatefulWidget {
  ListState createState() => ListState();
}

class ListState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    Future<List<User>> _getUsers() async {

      http.Response response = await http.post(Uri.encodeFull("http://avmschoolldh.com/e2buddyPlacementPaper/ppGetCategory.php"), headers: {"Accept" : "application/json"});


      var responseJson = json.decode(response.body);
      return (responseJson['data'] as List)
          .map((p) => User.fromJson(p))
          .toList();

    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'E2Buddy',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: FutureBuilder(
            future: _getUsers(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text('Loading....', style: TextStyle(color: Colors.white),),

                  ),
                );

              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data[index].categoryName, style: TextStyle(color: Colors.white),),
                      subtitle: Text(snapshot.data[index].categoryId, style: TextStyle(color: Colors.white),),

                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => DetailScreen(snapshot.data[index])));
                      },
                    );
                  },
                );
              }
            }),
      ),
    );
  }
}

class User {

  final String categoryId, categoryName;

  User({
    this.categoryId,
    this.categoryName,

  });

  factory User.fromJson(Map<String, dynamic> json) {
    return new User(
      categoryId: json['categoryId'].toString(),
      categoryName: json['categoryName'].toString(),
    );
  }

}

class DetailScreen extends StatelessWidget {
  final User user;
  DetailScreen(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(user.categoryName, style: TextStyle(color: Colors.white),),
      ),
    );
  }

}