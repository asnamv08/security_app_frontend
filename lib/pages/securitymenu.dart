import 'package:flutter/material.dart';
import 'package:security_app/pages/addvisitor.dart';
import 'package:security_app/pages/views.dart';

class securtitymenu extends StatefulWidget {
  const securtitymenu({super.key});

  @override
  State<securtitymenu> createState() => _securtitymenuState();
}

class _securtitymenuState extends State<securtitymenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Security App",style: TextStyle(fontSize: 25),),backgroundColor: Colors.pink.shade300,),
        body: Container(width: double.infinity,decoration: BoxDecoration(gradient: LinearGradient(colors: [
          Colors.deepPurpleAccent,
          Colors.pinkAccent
        ])),padding: EdgeInsets.all(20),child: Column(children: [
          SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple
              ),onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>addvisitor()));
              }, child: Text("Add Visitor",style: TextStyle(fontSize: 20),))),
          SizedBox(height: 10,),
          SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple
              ),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>views()));
              }, child: Text("View Visitors",style: TextStyle(fontSize: 20),))),
          SizedBox(height: 10,),
        ],),),
      ),
    );
  }
}
