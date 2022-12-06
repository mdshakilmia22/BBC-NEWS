import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart'as http;
import 'package:login_plugin/config/config.dart';
import 'package:login_plugin/singup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../modal/Sing_In/SingInModel.dart';


class AuthReport{
  Future<bool> SingInWithEmail(String email, String passord)async{
    final prefs = await SharedPreferences.getInstance();
    String url = config.urlServer + config.singinurl;
    var respnse= await http.post(Uri.parse(url),body: <String, String>{
      'email':email,
      'password':passord,
    });
    var data=jsonDecode(respnse.body);
    if(respnse.statusCode==200){

      var massage= SingInModel.fromJson(data);
      await prefs.setString('token', massage.message.toString());
      return true;
    }
    else{
      return false;
    }

  }
}