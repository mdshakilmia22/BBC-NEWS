import 'Data.dart';

/// success : true
/// message : "Loaded Successfully"
/// data : {"id":35,"title":"Patricia urquiola Coats transparent glas tables for livings in were front  Patricia urquiola glas tables for livings","summary":"The Government Medical College (GMC) of Amritsar has banned girls from wearing skirts, t-shirts, jeans and shorts in the college premises.","description":"<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Boys have also been asked to wear formal trousers instead of jeans, according to a circular issued by college Principal Sujata Sharma.<br><br>The head of the department has been asked to ensure that the dress code is followed by all the students, it said. Boys have also been asked to wear formal trousers instead of jeans, according to a circular issued by college Principal Sujata Sharma.The new dress code will come into effect from October 1.<br>A group of students, led by their leader Mansimrat Singh, Wednesday met the college principal, requesting her to withdraw the circular.<br>The head of the department has been asked to ensure that the dress code is followed by all the students, it said. Boys have also been asked to wear formal trousers instead of jeans, according to a circular issued by college Principal Sujata Sharma.The new dress code will come into effect from October 1.<br>A group of students, led by their leader Mansimrat Singh, Wednesday met the college principal, requesting her to withdraw the circular.<br><br>However, Sharma declined to withdraw it, the students said.</span><span style=\"color: rgb(15, 15, 15); font-family: &quot;Chronicle Text G1 A&quot;, &quot;Chronicle Text G1 B&quot;, serif; font-size: 16.2px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span>","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_070441_girl2.jpg"],"date":"2021-10-21","news_subcategory":"World","news_category":"World","news_categoryslug":"world-news","reporter_name":"Reporter 12","viewers":1,"comments":[]}

class NewsCategory {
  NewsCategory({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  NewsCategory.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;

  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}