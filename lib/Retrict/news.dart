import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_plugin/config/newspaper_config/newspaper_config.dart';
import 'package:login_plugin/modal/CategoryDetails/CategoryFirstModel.dart';
import 'package:login_plugin/modal/latest_news/LatestNews.dart';
import '../modal/Category Model/CategoryNewModel.dart';
import '../modal/Search Model/SeachModel.dart';
import '../modal/news_deatils/NewsCategory.dart';
import '../modal/news_deatils/NewsDetails.dart';

class NewsPaper{
  Future<LatestNews> newlatest() async{
    String url= NewsConfig.newsurl + NewsConfig.latestnews;
    var response= await http.get(Uri.parse(url));
    var data= jsonDecode(response.body);
    if(response.statusCode==200){
      return LatestNews.fromJson(data);
    }
    else{
      throw Exception('Error');
    }
  }
  }

  class NewsClass {
    Future<NewsDetails> newsdetails(String id) async {
      var response = await http.get(
          Uri.parse('${NewsConfig.newsurl + NewsConfig.newsdetails}/$id'));
      if (response.statusCode == 200) {
        return NewsDetails.fromJson(jsonDecode(response.body));
      }
      else {
        throw Exception('Error');
      }
    }
  }
  
class CategoryNews{
  Future<NewsCategory> getnewsc(String id) async{
    var response = await http.get(Uri.parse('${NewsConfig.newsurl + NewsConfig.newsdetails}/$id'));
    var data= jsonDecode(response.body);
    if(response.statusCode==200){
      return NewsCategory.fromJson(data);
    }
    else{
      throw Exception('Error');
    }
  }
}
class NewsPaperClass{
  Future<CategoryNewModel> getcategory()async{
    var response= await http.get(Uri.parse(NewsConfig.newsurl + NewsConfig.categorynews));
    if(response.statusCode==200){
      return CategoryNewModel.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Error');
    }

  }

  Future<CategoryFirstModel> getFirstCategory(String id)async{
    var response= await http.get(Uri.parse('${NewsConfig.newsurl + NewsConfig.categorfirst} / $id'));
    if(response.statusCode==200){
      return CategoryFirstModel.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Error');
    }

  }
  Future<SeachModel> getSearch(String item)async{
    var response= await http.post(Uri.parse(NewsConfig.newsurl + NewsConfig.search),body: <String, String>{
      'search' : item
    });
    if(response.statusCode==200){
      return SeachModel.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Error');
    }
  }


}
