// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  // final username;
  // final email;

  // MyHeaderDrawer(this.username, this.email);
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[800],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/download1.jpg')),
            ),
          ),
          Text(
            "Furqan AHmed",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "furqanrahujo@gmail.com",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
