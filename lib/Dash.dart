import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third App With Pics"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ListTile(
            tileColor: Colors.blue,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/build.jpeg"),
              backgroundColor: Colors.black,
            ),
          ),
          Image.asset("assets/images/2.jpeg",
          height: 200,
          width: 200,
          ),
          ListTile(
            tileColor: Colors.blue,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/2.jpeg"),),
          ),
          Image.asset("assets/images/build.jpeg",
          height: 300,
          width: 300,),
          ElevatedButton(
            onPressed: (){
            Navigator.pop(context);
            }, 
          child: Text("Back",style: (TextStyle(fontSize: 25)),),
          ),
        ],
      ),
    );
  }
}