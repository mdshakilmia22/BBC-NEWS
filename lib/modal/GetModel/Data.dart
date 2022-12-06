import 'User.dart';

/// user : {"id":38,"name":"md shakil mia","email":"mdshakilmia3245@gmail.com","phone":"01920995720","image":"https://cashrocket.maantechnology.com/","user_type":"User","refer":null,"refer_code":"RF3721","facebook_token":null,"google_token":null,"status":1,"email_verified_at":null,"access_date":"2022-11-11 05:09:37","remember_token":null,"created_at":"2022-11-11T04:09:37.000000Z","updated_at":"2022-11-11T04:09:37.000000Z","wallet":{"id":32,"user_id":38,"balance":0,"status":1,"created_at":"2022-11-11T04:09:37.000000Z","updated_at":"2022-11-11T04:09:37.000000Z"}}

class Data {
  Data({
      User? user,}){
    _user = user;
}

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  User? _user;
Data copyWith({  User? user,
}) => Data(  user: user ?? _user,
);
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}