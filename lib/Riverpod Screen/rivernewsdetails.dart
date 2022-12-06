import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:login_plugin/modal/news_deatils/NewsDetails.dart';
import '../config/RiverportConfig/rconfig.dart';
import '../widget/newscard.dart';


class RiverPordDetails extends StatefulWidget {
  const RiverPordDetails({super.key, required this.newsid});
  final String newsid;
  @override
  State<RiverPordDetails> createState() => _RiverPordDetailsState();
}

class _RiverPordDetailsState extends State<RiverPordDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (_,ref,watch){
          AsyncValue<NewsDetails> details= ref.watch(getdetails(widget.newsid));
          return details.when(
              data: (paper){
                return Scaffold(
                  extendBodyBehindAppBar: true,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                  ),
                  body: RefreshIndicator(
                    onRefresh: () async=>ref.refresh(getdetails(widget.newsid)),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        FeatureNewsCard(
                            images: paper.data?.image?[0].toString() ?? '',
                            titles: paper.data?.title ?? ''),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(color: Colors.red),
                                child: Text(paper.data?.newsCategory ?? '',style: TextStyle(color: Colors.white),),
                              ),
                              Spacer(),
                              Text(paper.data?.reporterName ?? '',style: TextStyle(color: Colors.black),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(Bidi.stripHtmlIfNeeded(paper.data?.description ?? ''),style: TextStyle(color: Colors.black,fontSize: 16.0),),
                        )
                      ],
                    ),
                  ),
                );
              },
              error: (e,stack){
                return Text('Error');
              },
              loading: (){
                return const Center(child: CircularProgressIndicator(),);
              });
        });
  }
}
