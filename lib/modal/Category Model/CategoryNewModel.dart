import 'Datas.dart';

/// success : true
/// message : "Loaded Successfully"
/// datas : {"current_page":1,"data":[{"id":1,"name":"Business","slug":"business-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/business.png"},{"id":5,"name":"Entertainment","slug":"entertainment-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/entertainment.png"},{"id":3,"name":"Lifestyle","slug":"lifestyle-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/lifestyle.png"},{"id":7,"name":"National","slug":"national-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/national.png"},{"id":4,"name":"Politics","slug":"politics-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/politics.png"},{"id":2,"name":"Sports","slug":"sports-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/sports.png"},{"id":6,"name":"Technology","slug":"technology-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/technology.png"},{"id":9,"name":"Travel","slug":"travel-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/travel.png"},{"id":8,"name":"World","slug":"world-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/world.png"}],"first_page_url":"http://maannews.maantechnology.com/api/news_categories?page=1","from":1,"last_page":1,"last_page_url":"http://maannews.maantechnology.com/api/news_categories?page=1","links":[{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://maannews.maantechnology.com/api/news_categories?page=1","label":"1","active":true},{"url":null,"label":"Next &raquo;","active":false}],"next_page_url":null,"path":"http://maannews.maantechnology.com/api/news_categories","per_page":10,"prev_page_url":null,"to":9,"total":9}

class CategoryNewModel {
  CategoryNewModel({
      bool? success, 
      String? message, 
      Datas? datas,}){
    _success = success;
    _message = message;
    _datas = datas;
}

  CategoryNewModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _datas = json['data'] != null ? Datas.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Datas? _datas;

  bool? get success => _success;
  String? get message => _message;
  Datas? get datas => _datas;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_datas != null) {
      map['data'] = _datas?.toJson();
    }
    return map;
  }

}