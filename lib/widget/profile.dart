import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../spalash_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 0.5,
                  image: NetworkImage('https://scontent.fdac136-1.fna.fbcdn.net/v/t39.30808-6/312798103_1487481241715806_9033796390300022862_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHmtB1k6SJKTg4FMyeDQQE8E7H0DvQGjEoTsfQO9AaMSlqSe-f11k_E1SyukYmHR_hkDuYndYOEvX8G0g7PKxhw&_nc_ohc=T1X1WLqhhxUAX_ntQu-&_nc_ht=scontent.fdac136-1.fna&oh=00_AfCS4d5D8BSxJiy817h-yOjihHQAD5XzLudI_I0xKTxPIg&oe=638BE7F2'),
                )
              ),

            ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 180),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage('https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170,top: 230),
                child: Text('Shakil Ahmed',style: TextStyle(fontSize: 22,color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Merriweather'),),
              )
            ]
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              children: [
                Container(
                  height: MediaQuery.of(context).size.height/8,
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('965',style: TextStyle(fontSize: 15,color: Colors.white),),
                            Text('Point',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)
                          ],
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('1015',style: TextStyle(fontSize: 15,color: Colors.white),),
                            Text('Followers',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('368',style: TextStyle(fontSize: 15,color: Colors.white),),
                            Text('Following',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
           InkWell(
             onTap: (){
               setState(() {
                 launchUrlString('https://mail.google.com/mail/u/0/#inbox');
               });
             },
            child: ListTile(
              leading: Image.network('https://cdn4.iconfinder.com/data/icons/social-media-logos-6/512/112-gmail_email_mail-512.png',height: 30,width: 30,),
              title: Text('mdshakilmia3245@gmail.com',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
          ),

          InkWell(
            onTap: (){
              setState(() {
                _makePhoneCall('01764972576');
              });
            },
            child: ListTile(
              leading: Image.network('https://i0.wp.com/www.tonation-nsn.gov/wp-content/uploads/2021/08/Phone-Icon.png',height: 40,width: 40,),
              title: Text('01764972576',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
          ),

          InkWell(
            onTap: (){
              setState(() {
                launchUrlString('https://www.facebook.com/sakil.sirajul.5');
              });
            },
            child: ListTile(
              leading: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png',height: 40,width: 40,),
              title: Text('Facebok',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
          ),

          InkWell(
            onTap: (){
              setState(() {
                launchUrlString('https://www.linkedin.com/in/shakil-mia-667b28255/');
              });
            },
            child: ListTile(
              leading: Image.network('https://cdn-icons-png.flaticon.com/512/174/174857.png',height: 35,width: 35,),
              title: Text('Linked in',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () async{
              final prefs = await SharedPreferences.getInstance();
              prefs.setString('token', '').then((value) => SpalashScreen().launch(context));
            },
            child: Text('Log Out',style: TextStyle(fontWeight: FontWeight.bold),),
          )


        ],
      ),
    ),
  ),

);
  }
}


