import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:login_plugin/Retrict/inautho.dart';
import 'package:login_plugin/second.dart';
import 'package:login_plugin/singup.dart';
import 'package:nb_utils/nb_utils.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontoller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('B',style:TextStyle(fontFamily: 'Merriweather',fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('B',style:TextStyle(fontFamily: 'Merriweather',fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('C',style:TextStyle(fontFamily: 'Merriweather',fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('News',style:TextStyle(fontFamily: 'Merriweather',fontSize: 35,fontWeight: FontWeight.bold,color: Colors.red))
                  ],
                ),
                const SizedBox(height: 40,),
                SizedBox(
                  height: 50,
                  child: AppTextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    textFieldType: TextFieldType.EMAIL,
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 5,
                            color: Colors.teal,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: AppTextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    textFieldType: TextFieldType.PASSWORD,
                    controller: passwordcontoller,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                        ),
                        onPressed: ()async{
                          if(emailcontroller.text.isEmpty){
                            toast('Enter Your Email Address');
                          }
                          else if(passwordcontoller.text.isEmpty){
                            toast('Enter Your Password');
                          }
                          else if(passwordcontoller.text.length<6){
                            toast('Password at least 6 digit');
                          }
                          else{
                            try{
                              EasyLoading.show(status: 'Singing In...');
                              bool status= await AuthReport().SingInWithEmail(emailcontroller.text, passwordcontoller.text);
                              if(status){
                                EasyLoading.showSuccess('Singing Successful...');
                                SecondPage().launch(context);
                              }
                              else{
                                EasyLoading.showError('Singing Filled');
                              }
                            }catch(e){
                              return EasyLoading.showError('Something wrong try again');
                            }
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Login',style: TextStyle(fontFamily: 'Merriweather',fontSize: 18),),
                        )),
                    TextButton(
                        onPressed: (){},
                        child: const Text('Forgot Password',style: TextStyle(color: Colors.red,fontSize: 16),)),

                  ],
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Need an Accounts?',style: TextStyle(color: Colors.grey[600],fontFamily: 'Merriweather',fontSize: 15),),
                    TextButton(onPressed: (){
                      SignupPage().launch(context);
                    }, child: const Text('Sign Up',style: TextStyle(fontFamily: 'Merriweather',color: Colors.red,fontSize: 17),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
