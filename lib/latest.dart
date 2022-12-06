import 'package:flutter/material.dart';
import 'package:login_plugin/Retrict/news.dart';
import 'package:login_plugin/modal/latest_news/LatestNews.dart';
import 'package:login_plugin/widget/deatails.dart';
import 'package:login_plugin/widget/newscard.dart';
import 'package:nb_utils/nb_utils.dart';

class LatestNewsPage extends StatefulWidget {
  const LatestNewsPage({Key? key}) : super(key: key);

  @override
  State<LatestNewsPage> createState() => _LatestNewsPageState();
}

class _LatestNewsPageState extends State<LatestNewsPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LatestNews>(
          future: NewsPaper().newlatest(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data?.datas?.data?.length ?? 0,
                  itemBuilder: (context,index){
                    return Column(
                        children: [
                          FeatureNewsCard(
                              images: snapshot.data?.datas?.data?[index].image?[0] ?? '',
                              titles: snapshot.data?.datas?.data?[index].title ?? '').visible(index==0),

                            NewsCard(
                                images: snapshot.data?.datas?.data?[index].image?[0] ?? '',
                                titles: snapshot.data?.datas?.data?[index].title ?? '').visible(index !=0),

                        ],
                    ).onTap(() => DetailsPage(newsid: snapshot.data!.datas!.data![index].id.toString(),).launch(context));
                  });
            }
            else{
              return const Padding(
                padding: EdgeInsets.only(top: 250),
                child: Center(child: CircularProgressIndicator(),),
              );
            }
          });
  }
}
