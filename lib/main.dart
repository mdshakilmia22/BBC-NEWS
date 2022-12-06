import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_plugin/second.dart';
import 'package:login_plugin/sign_in.dart';
import 'package:login_plugin/spalash_screen.dart';
void main(){
  runApp(ProviderScope(child: myApp()));
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      home: SpalashScreen(),
    );
  }
}
