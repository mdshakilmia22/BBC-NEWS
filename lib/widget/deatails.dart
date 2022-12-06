import 'package:flutter/material.dart';
import 'package:login_plugin/Retrict/news.dart';
import 'package:login_plugin/modal/news_deatils/NewsDetails.dart';
import 'package:intl/intl.dart';
import 'newscard.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({required this.newsid});
  final String newsid;
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SafeArea(
        child: FutureBuilder<NewsDetails>(
          future: NewsClass().newsdetails(widget.newsid),
          builder: (_,snapshot){
            if(snapshot.hasData){
              return ListView(
                padding: EdgeInsets.zero,
                children: [
                  FeatureNewsCard(
                      images: snapshot.data?.data?.image?[0].toString() ?? '',
                      titles: snapshot.data?.data?.title ?? ''),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(color: Colors.red),
                          child: Text(snapshot.data?.data?.newsCategory ?? '',style: TextStyle(color: Colors.white),),
                        ),
                        Spacer(),
                        Text(snapshot.data?.data?.reporterName ?? '',style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(Bidi.stripHtmlIfNeeded(snapshot.data?.data?.description ?? ''),style: TextStyle(color: Colors.black,fontSize: 16.0),),
                  )
                ],
              );
            } else{
              return const Center(child: CircularProgressIndicator(),);
            }
          },
        ),
      ),
    );
  }
}
