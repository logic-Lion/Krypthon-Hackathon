import 'dart:convert';

import 'package:http/http.dart' as http;

class API{

  Future<void> post(Map val, String url) async {
    try{
      print("post request sent");
      await http.post(Uri.parse(url),
          body: json.encode(val), // add json map
          headers: {'Content-type': 'application/json'});
    }
    catch(e){
      print(e);
    }
  }

  void get(String url)async{
    http.Response resp = await http.get(Uri.parse(url));

    if(resp.statusCode ==200){
      dynamic data = jsonDecode(resp.body);

      print(data);
    }
    else{
      print("get request");
    }
  }
}