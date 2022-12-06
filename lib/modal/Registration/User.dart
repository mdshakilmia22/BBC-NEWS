/// first_name : "morsalin"
/// last_name : "islam"
/// phone : "01764972574"
/// email : "morsalin@gmail.com"
/// updated_at : "2022-12-03T09:24:43.000000Z"
/// created_at : "2022-12-03T09:24:43.000000Z"
/// id : 102

class User {
  User({
      String? firstName, 
      String? lastName, 
      String? phone, 
      String? email, 
      String? updatedAt, 
      String? createdAt, 
      int? id,}){
    _firstName = firstName;
    _lastName = lastName;
    _phone = phone;
    _email = email;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
}

  User.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _phone = json['phone'];
    _email = json['email'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _firstName;
  String? _lastName;
  String? _phone;
  String? _email;
  String? _updatedAt;
  String? _createdAt;
  int? _id;

  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get phone => _phone;
  String? get email => _email;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['phone'] = _phone;
    map['email'] = _email;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }

}