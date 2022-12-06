import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:login_plugin/config/RiverportConfig/rconfig.dart';
import 'package:login_plugin/modal/CategoryDetails/CategoryFirstModel.dart';

class CategoryDetailsPage extends StatefulWidget {
  const CategoryDetailsPage({super.key, required this.newsid});
  final String newsid;
  @override
  State<CategoryDetailsPage> createState() => _CategoryDetailsPageState();
}

class _CategoryDetailsPageState extends State<CategoryDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, ref, watch) {
      AsyncValue<CategoryFirstModel> update =
          ref.watch(firstCategoryProvider((widget.newsid)));
      return update.when(data: (news) {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: news.datas?.data?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      news.datas?.data?[index].image?[0] ?? '',
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      news.datas?.data?[index].summary ?? '',
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(news.datas?.data?[index].date ?? ''),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Text('By',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          news.datas?.data?[index].newsCategory ?? '',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'BBC NEWS',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      height: 50,
                      color: Colors.grey[700],
                    ),
                    Text(
                      Bidi.stripHtmlIfNeeded(
                          news.datas?.data?[index].description ?? ''),
                      style: TextStyle(color: Colors.grey[800], fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                    const Divider(
                      thickness: 5,
                      color: Colors.red,
                      height: 50,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              );
            });
      }, error: (e, stack) {
        return const Center(
          child: Text('Error'),
        );
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      });
    });
  }
}
