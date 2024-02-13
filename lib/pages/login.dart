import 'package:flutter/material.dart';
import 'package:security_app/pages/menu.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),backgroundColor: Colors.purple,),
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [
        Colors.purple,
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()));
              }, child: Text("Login",style: TextStyle(fontSize: 20),)))
      ],),),
    );
  }
}
