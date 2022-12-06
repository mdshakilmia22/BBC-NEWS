import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart'as http;
import 'package:login_plugin/config/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../modal/Registration/SingUpModel.dart';


class AuthRepo{

  Future<bool> signUpWIthEmail(String fullName,String lastName, String emailAddress, String phoneNumber, String passWord,String confarmPassword) async{
    final prefs = await SharedPreferences.getInstance();
    String url = config.urlServer + config.singupurl;
    var response = await http.post(Uri.parse(url),body: <String, String>{
      'first_name': fullName,
      'last_name' : lastName,
      'email': emailAddress,
      'phone': phoneNumber,
      'password': passWord,
      'password_confirmation' : confarmPassword,
    });
    var data = jsonDecode(response.body);
    if(response.statusCode == 201){
      var decodedData = SingUpModel.fromJson(data);
      await prefs.setString('token', decodedData.message.toString());
      return true;
    } else{
      return false;
    }
  }

}
