import 'package:flutter/material.dart';
import 'package:login_plugin/second.dart';
import 'package:login_plugin/sign_in.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SpalashScreen extends StatefulWidget {
  const SpalashScreen({Key? key}) : super(key: key);

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {

  Future<void> goScreen() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString("token");
    if(token.isEmptyOrNull){
      await Future.delayed(const Duration(seconds: 2));
      SingInPage().launch(context);
    }
    else {
      await Future.delayed(const Duration(seconds: 2))
          .then((value) => const SecondPage().launch(context));
    }

  }
  @override
  void initState() {
    goScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('B',style:TextStyle(fontFamily: 'Merriweather',fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red)),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('B',style:TextStyle(fontFamily: 'Merriweather',fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red)),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('C',style:TextStyle(fontFamily: 'Merriweather',fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red)),
                  ),
                ),
                SizedBox(width: 5,),
                Text('News',style:TextStyle(fontFamily: 'Merriweather',fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
