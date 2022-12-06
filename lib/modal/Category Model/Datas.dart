import 'Data.dart';
import 'Links.dart';

/// current_page : 1
/// data : [{"id":1,"name":"Business","slug":"business-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/business.png"},{"id":5,"name":"Entertainment","slug":"entertainment-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/entertainment.png"},{"id":3,"name":"Lifestyle","slug":"lifestyle-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/lifestyle.png"},{"id":7,"name":"National","slug":"national-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/national.png"},{"id":4,"name":"Politics","slug":"politics-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/politics.png"},{"id":2,"name":"Sports","slug":"sports-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/sports.png"},{"id":6,"name":"Technology","slug":"technology-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/technology.png"},{"id":9,"name":"Travel","slug":"travel-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/travel.png"},{"id":8,"name":"World","slug":"world-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/world.png"}]
/// first_page_url : "http://maannews.maantechnology.com/api/news_categories?page=1"
/// from : 1
/// last_page : 1
/// last_page_url : "http://maannews.maantechnology.com/api/news_categories?page=1"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://maannews.maantechnology.com/api/news_categories?page=1","label":"1","active":true},{"url":null,"label":"Next &raquo;","active":false}]
/// next_page_url : null
/// path : "http://maannews.maantechnology.com/api/news_categories"
/// per_page : 10
/// prev_page_url : null
/// to : 9
/// total : 9

class Datas {
  Datas({
      int? currentPage, 
      List<Data>? data, 
      String? firstPageUrl, 
      int? from, 
      int? lastPage, 
      String? lastPageUrl, 
      List<Links>? links, 
      dynamic nextPageUrl, 
      String? path, 
      int? perPage, 
      dynamic prevPageUrl, 
      int? to, 
      int? total,}){
    _currentPage = currentPage;
    _data = data;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _links = links;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
}

  Datas.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }
  int? _currentPage;
  List<Data>? _data;
  String? _firstPageUrl;
  int? _from;
  int? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  dynamic _nextPageUrl;
  String? _path;
  int? _perPage;
  dynamic _prevPageUrl;
  int? _to;
  int? _total;

  int? get currentPage => _currentPage;
  List<Data>? get data => _data;
  String? get firstPageUrl => _firstPageUrl;
  int? get from => _from;
  int? get lastPage => _lastPage;
  String? get lastPageUrl => _lastPageUrl;
  List<Links>? get links => _links;
  dynamic get nextPageUrl => _nextPageUrl;
  String? get path => _path;
  int? get perPage => _perPage;
  dynamic get prevPageUrl => _prevPageUrl;
  int? get to => _to;
  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }

}