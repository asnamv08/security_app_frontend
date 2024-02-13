import 'package:flutter/material.dart';
import 'package:security_app/pages/securitymenu.dart';

class securitylogin extends StatefulWidget {
  const securitylogin({super.key});

  @override
  State<securitylogin> createState() => _securityloginState();
}

class _securityloginState extends State<securitylogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Login"),backgroundColor: Colors.purple,),
    body: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [
    Colors.deepPurpleAccent,
    Colors.red
    ])),padding: EdgeInsets.all(20),child: Column(children: [
    SizedBox(height: 10,),
    TextField(decoration: InputDecoration(labelText: ("Email"),hintText: ("Enter Your Email"),border: OutlineInputBorder()),),
    SizedBox(height: 10,),
    TextField(decoration: InputDecoration(labelText: ("Password"),hintText: ("Enter Your Password"),border: OutlineInputBorder()),),
    SizedBox(height: 10,),
    SizedBox(
    width: 200,
    height: 60,
    child: ElevatedButton(style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: Colors.purple
    ),onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>securtitymenu()));
    }, child: Text("Login",style: TextStyle(fontSize: 20),))),
      ]),
    )));
  }
}
