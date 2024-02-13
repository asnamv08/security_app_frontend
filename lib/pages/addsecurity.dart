import 'package:flutter/material.dart';
import 'package:security_app/services/securityservice.dart';

class addsecurity extends StatefulWidget {
  const addsecurity({super.key});

  @override
  State<addsecurity> createState() => _addsecurityState();
}

class _addsecurityState extends State<addsecurity> {
  TextEditingController getname=new TextEditingController();
  TextEditingController getempid=new TextEditingController();
  TextEditingController getaddress=new TextEditingController();
  TextEditingController getphone=new TextEditingController();
  TextEditingController getemail=new TextEditingController();
  TextEditingController getpassword=new TextEditingController();
  void Sendvaluetoapi()async{
    final response=await SecurityApiService().senddata(
      getname.text,
      getempid.text,
      getaddress.text,
      getphone.text,
      getemail.text,
      getpassword.text
    );
    if(response["status"]=="success")
    {
      print("successfully");
    }
    else
    {
      print("error");
    }


  }
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
              ),onPressed:Sendvaluetoapi, child: Text("Register",style: TextStyle(fontSize: 20),)),
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
