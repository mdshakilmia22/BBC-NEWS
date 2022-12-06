import 'Datas.dart';

/// success : true
/// message : "Loaded Successfully"
/// datas : {"current_page":1,"data":[{"id":51,"title":"Taina Blue Retreat is a Converted Tower on the Greek Coast","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23032022_050521_Taina-Blue-Retreat-is-a-Converted-Tower-on-the-Greek-Coast.png"],"date":"2022-03-23","created_at":"2022-03-23T05:05:21.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Repoter 11"},{"id":48,"title":"Entertainment partners chill at home with a few must-see movies or head out for","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage24102021_050111_maannewsimage19102021_094212_remote_work3_190515-800x450.jpg"],"date":"2021-11-06","created_at":"2021-10-23T11:50:10.000000Z","news_subcategory":"World","news_category":"World","news_categoryslug":"world-news","reporter_name":"Reporter 21"},{"id":47,"title":"With the thrills of a casino, the excitement of live harness racing and the delight of fine food and spirits, you can kick back","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage24102021_050503_politics.jpg"],"date":"2021-10-23","created_at":"2021-10-23T11:28:51.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":46,"title":"Amazon has 143 billion reasons to keep Strech lining hemline above knee burgundy glossy silk complete hid zip little catches rayon","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_072605_amazon.jpg"],"date":"2021-11-03","created_at":"2021-10-23T07:24:11.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":45,"title":"Bolsonaro’s new alliance for brazil is a lesson in the politics of loyalty and campaign finance  For over three decades, Bolsonaro used different","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034317_politics_3.jpg"],"date":"2021-11-14","created_at":"2021-10-23T06:12:58.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":44,"title":"Official press statement an historic moment time and a new journey to begin. Shirley Chisholm was the first African American woman elected to Congress","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034246_politics_2.jpg"],"date":"2021-10-23","created_at":"2021-10-23T06:09:35.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":43,"title":"Green-party success Is reshaping global politics are increasingly shaping the debate in countries around the world","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_060444_politics.jpg"],"date":"2021-10-23","created_at":"2021-10-23T06:04:44.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":42,"title":"Computer technology.generation new computer technology Stock Our managed it and it monitoring services allow you to focus","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_114415_techno.jpg"],"date":"2021-11-04","created_at":"2021-10-21T12:48:57.000000Z","news_subcategory":"Communication","news_category":"Technology","news_categoryslug":"technology-news","reporter_name":"Reporter 21"},{"id":41,"title":"Manages and administers a specific function of the Police department’s it systems  including support in computer hardware","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_035547_card_1.jpg"],"date":"2021-11-03","created_at":"2021-10-21T12:46:11.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":40,"title":"Two georgian silver medallists were told to leave the olympic games for taking a sightseeing trip in tokyo .is the world's largest city","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034427_basket_ball.jpg"],"date":"2021-10-23","created_at":"2021-10-21T12:42:10.000000Z","news_subcategory":"Cricket","news_category":"Sports","news_categoryslug":"sports-news","reporter_name":"Reporter 21"}],"first_page_url":"http://maannews.maantechnology.com/api/latest_news?page=1","from":1,"last_page":5,"last_page_url":"http://maannews.maantechnology.com/api/latest_news?page=5","links":[{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=1","label":"1","active":true},{"url":"http://maannews.maantechnology.com/api/latest_news?page=2","label":"2","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=3","label":"3","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=4","label":"4","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=5","label":"5","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=2","label":"Next &raquo;","active":false}],"next_page_url":"http://maannews.maantechnology.com/api/latest_news?page=2","path":"http://maannews.maantechnology.com/api/latest_news","per_page":10,"prev_page_url":null,"to":10,"total":46}

class LatestNews {
  LatestNews({
      bool? success, 
      String? message, 
      Datas? datas,}){
    _success = success;
    _message = message;
    _datas = datas;
}

  LatestNews.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _datas = json['data'] != null ? Datas.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Datas? _datas;
LatestNews copyWith({  bool? success,
  String? message,
  Datas? datas,
}) => LatestNews(  success: success ?? _success,
  message: message ?? _message,
  datas: datas ?? _datas,
);
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