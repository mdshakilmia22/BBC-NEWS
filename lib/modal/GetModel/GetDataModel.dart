import 'Data.dart';

/// success : true
/// message : "Get Data Successfully  !"
/// data : {"user":{"id":38,"name":"md shakil mia","email":"mdshakilmia3245@gmail.com","phone":"01920995720","image":"https://cashrocket.maantechnology.com/","user_type":"User","refer":null,"refer_code":"RF3721","facebook_token":null,"google_token":null,"status":1,"email_verified_at":null,"access_date":"2022-11-11 05:09:37","remember_token":null,"created_at":"2022-11-11T04:09:37.000000Z","updated_at":"2022-11-11T04:09:37.000000Z","wallet":{"id":32,"user_id":38,"balance":0,"status":1,"created_at":"2022-11-11T04:09:37.000000Z","updated_at":"2022-11-11T04:09:37.000000Z"}}}

class GetDataModel {
  GetDataModel({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  GetDataModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
GetDataModel copyWith({  bool? success,
  String? message,
  Data? data,
}) => GetDataModel(  success: success ?? _success,
  message: message ?? _message,
  data: data ?? _data,
);
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