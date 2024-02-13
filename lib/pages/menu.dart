import 'package:flutter/material.dart';
import 'package:security_app/pages/addsecurity.dart';
import 'package:security_app/pages/securityview.dart';
import 'package:security_app/pages/visitorview.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>addsecurity()));
            }, child: Text("Add Security",style: TextStyle(fontSize: 20),))),
        SizedBox(height: 10,),
        SizedBox(
            width: 250,
            height: 60,
            child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple
            ),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>sview()));
            }, child: Text("View Security",style: TextStyle(fontSize: 20),))),
        SizedBox(height: 10,),
        SizedBox(
            width: 250,
            height: 60,
            child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple
            ),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>vview()));
            }, child: Text("View All Visitors",style: TextStyle(fontSize: 20),))),
        SizedBox(height: 10,),
      ],),),
    ),);
  }
}
