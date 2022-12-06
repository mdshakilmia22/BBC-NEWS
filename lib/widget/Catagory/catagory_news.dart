import 'package:flutter/material.dart';
import 'package:login_plugin/widget/Catagory/category_details.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../Retrict/news.dart';
import '../../modal/Category Model/CategoryNewModel.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder<CategoryNewModel>(
        future: NewsPaperClass().getcategory(),
        builder: (_,snapshot){
          if(snapshot.hasData){
            return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: snapshot.data?.datas?.data?.length ?? 0,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/5,
                                width: MediaQuery.of(context).size.width/2.3,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(snapshot.data!.datas!.data![index].image.toString()),
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 130,left: 10),
                                  child: Text(snapshot.data!.datas!.data![index].name.toString(),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                                ),
                              ),

                            ],
                          ),
                        ]
                    ),
                  ).onTap(()=>CategoryDetailsPage(newsid: snapshot.data!.datas!.data![index].id.toString()).launch(context));
                });
          }
          else{
            return const Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}

