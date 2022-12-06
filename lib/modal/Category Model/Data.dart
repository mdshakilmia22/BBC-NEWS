/// id : 1
/// name : "Business"
/// slug : "business-news"
/// image : "http://maannews.maantechnology.com/public/uploads/images/news_category/business.png"

class Data {
  Data({
      int? id, 
      String? name, 
      String? slug, 
      String? image,}){
    _id = id;
    _name = name;
    _slug = slug;
    _image = image;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _image = json['image'];
  }
  int? _id;
  String? _name;
  String? _slug;
  String? _image;

  int? get id => _id;
  String? get name => _name;
  String? get slug => _slug;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['slug'] = _slug;
    map['image'] = _image;
    return map;
  }

}