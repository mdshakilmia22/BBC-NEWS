import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_plugin/Riverpod%20Screen/rivernewsdetails.dart';
import 'package:login_plugin/modal/latest_news/LatestNews.dart';
import 'package:nb_utils/nb_utils.dart';
import '../config/RiverportConfig/rconfig.dart';
import '../widget/deatails.dart';
import '../widget/newscard.dart';

class RiverLetest extends StatefulWidget {
  const RiverLetest({Key? key}) : super(key: key);

  @override
  State<RiverLetest> createState() => _RiverLetestState();
}

class _RiverLetestState extends State<RiverLetest> {

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (_, ref,watch){
          AsyncValue<LatestNews> latest= ref.watch(getletest);
          return latest.when(
              data: (news){
                return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: news.datas?.data?.length ?? 0,
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          FeatureNewsCard(
                              images: news.datas?.data?[index].image?[0] ?? '',
                              titles: news.datas?.data?[index].title ?? '').visible(index==0),

                          NewsCard(
                              images: news.datas?.data?[index].image?[0] ?? '',
                              titles: news.datas?.data?[index].title ?? '').visible(index !=0),

                        ],
                      ).onTap(() => RiverPordDetails(newsid: news.datas!.data![index].id.toString(),).launch(context));
                    });
              },
              error: (e, stack){
                return const Center(
                  child: Text('Error'),
                );
              },
              loading: (){
                return const Center(
                  child: CircularProgressIndicator(),
                );
              });
        });
  }
}
