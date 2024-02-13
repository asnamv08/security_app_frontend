import 'package:flutter/material.dart';
import 'package:security_app/models/securitymodel.dart';
import 'package:security_app/services/securityservice.dart';

class sview extends StatefulWidget {
  const sview({super.key});

  @override
  State<sview> createState() => _sviewState();
}

class _sviewState extends State<sview> {
  Future<List<Posts>>? data;
  void initState() {
    // TODO: implement initState
    super.initState();
    data=SecurityApiService().getPosts();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData && snapshot.data!.isNotEmpty){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder:(value,index){
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                                title:  Text("Name: "+snapshot.data![index].name.toString()),
                                subtitle: Text("Empoloyee Id:"+snapshot.data![index].empid.toString()+"\n"+"Address:"+snapshot.data![index].address.toString()+"\n"+"Phone:"+snapshot.data![index].phoneno.toString()+"\n"+"Email:"+snapshot.data![index].email.toString()+"\n"+"Password:"+snapshot.data![index].password.toString()),
                                leading:CircleAvatar(child: Text(snapshot.data![index].name.toString()[0]),)
                            )
                          ],
                        ),
                      );

                    }
                );
              }
              else{
                return Text("Fetching data");
              }

            }

        ),

      ),
    );
  }
}
