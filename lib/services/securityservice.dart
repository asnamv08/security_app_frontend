import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:security_app/models/securitymodel.dart';

class SecurityApiService {
  Future<dynamic> senddata(
      String name,
      String empid,
      String address,
      String phone,
      String emailid,
      String password) async {
    var client = http.Client();
    var url = Uri.parse("http://localhost:3001/api/security/add");
    var response = await client.post(url,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{
          "name":name,
          "empid":empid,
          "address":address,
          "phoneno":phone,
          "email":emailid,
          "password":password
        })
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("Fail to send data");
    }
  }
  Future<List<Posts>>getPosts()async{
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/security/view");
    var response=await client.get(apiurl);
    if(response.statusCode==200)
    {
      return postsFromJson(response.body);
    }
    else
    {
      return [];
    }

  }
}