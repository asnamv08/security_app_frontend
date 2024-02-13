import 'package:flutter/material.dart';

class addsecurity extends StatefulWidget {
  const addsecurity({super.key});

  @override
  State<addsecurity> createState() => _addsecurityState();
}

class _addsecurityState extends State<addsecurity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Security Details",style: TextStyle(fontSize: 25,),),backgroundColor: Colors.deepPurple,),
        body: SingleChildScrollView(
          child: Container(padding: EdgeInsets.all(20),child: Column(children: [
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Name"),hintText: ("Enter your Name"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Employee Id"),hintText: ("Enter your Employee Id"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Address"),hintText: ("Enter your Contact Address"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Phone No"),hintText: ("Enter your Contact Number"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Email"),hintText: ("Enter your Email Id"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Password"),hintText: ("Enter your Password"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white
              ),onPressed: (){}, child: Text("Register",style: TextStyle(fontSize: 20),)),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white
              ),onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back To Menu",style: TextStyle(fontSize: 20),)),
            )
          ],),),
        ),
      ),
    );
  }
}
