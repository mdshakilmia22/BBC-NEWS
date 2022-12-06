
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:login_plugin/Riverpod%20Screen/riverletestnews.dart';
import 'package:login_plugin/spalash_screen.dart';
import 'package:login_plugin/widget/profile.dart';
import 'package:login_plugin/widget/seach_page.dart';
import 'package:nb_utils/nb_utils.dart';

import 'widget/Catagory/catagory_news.dart';
import 'latest.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  int selectedindex= 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
         centerTitle: true,
         title: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               height: 35,
               width: 35,
               color: Colors.black,
               child: Center(child: Text('B',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
             ),
             SizedBox(width: 5,),
             Container(
               height: 35,
               width: 35,
               color: Colors.black,
               child: Center(child: Text('B',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
             ),
             SizedBox(width: 5,),
             Container(
               height: 35,
               width: 35,
               color: Colors.black,
               child: Center(child: Text('C',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
             ),
             SizedBox(width: 5,),
           ],
         ),
         elevation: 0.0,
         backgroundColor: Colors.white,
          leading: InkWell(
              onTap: (){
                ProfilePage().launch(context);
              },
              child: Icon(IconlyBold.profile,size: 38,color: Colors.black,)),
         actions: [
           Row(
             mainAxisSize: MainAxisSize.min,
             children: [
               InkWell(
                  onTap: (){
                    
                  },
                   child: Icon(Icons.menu,size: 38,color: Colors.black,)),
               SizedBox(
                 width: 7,
               ),
               Icon(Icons.search,size: 38,color: Colors.black,).onTap((){
                 SearchPage().launch(context);
               }),
             ],
           )
         ],
       ),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/6.1,
              width: double.infinity,
              color: Colors.red[700],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('NEWS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
                        Icon(Icons.menu,size: 35,color: Colors.white,)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          color: selectedindex==1?Colors.red[900]:Colors.red[700],
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                                onTap:(){
                                  setState(() {
                                    selectedindex=1;
                                  });
                                },
                                child: Text('Latest News',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          color: selectedindex==2?Colors.red[900]:Colors.red[700],
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    selectedindex=2;
                                  });
                                },
                                child: Text('More Read',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            selectedindex==1?RiverLetest():CategoryPage(),
          ],
        ),
      ),
    );
  }
}
