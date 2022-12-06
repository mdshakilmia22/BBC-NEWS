import 'User.dart';

/// status : "Success"
/// message : "Login Successful"
/// user : {"id":102,"first_name":"morsalin","last_name":"islam","phone":"01764972574","email":"morsalin@gmail.com","verification_code":null,"verification_expire_at":null,"created_at":"2022-12-03T09:24:43.000000Z","updated_at":"2022-12-03T09:24:43.000000Z"}
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTRjNjk0OGI5YTdjMTNmN2M3ODk3ZGRjZGJiOWRiNTlkZjAwMjZkOTk3NWEyZGJhNTcyMmRjNjU5MjExMGU5NTNkYjhiMTBmMDczYjMzNmMiLCJpYXQiOjE2NzAwNTk1NDQuODU4NjEzMDE0MjIxMTkxNDA2MjUsIm5iZiI6MTY3MDA1OTU0NC44NTg2MTg5NzQ2ODU2Njg5NDUzMTI1LCJleHAiOjE3MDE1OTU1NDQuODUxNzQ5ODk3MDAzMTczODI4MTI1LCJzdWIiOiIxMDIiLCJzY29wZXMiOltdfQ.kbIBmlmyg8pSv7WN0XulfcNxTJNoE1aaRknA1hU6vfYzbYq3e1oNdMoUxLh4AtbqH5ToGHN-ObQSLA6oqCUXR65tCesk1NkMhISIA0iQ3K80YhX16kjeMJC1KBwpe4xirDi6KE5Lq00FEP6XEaL03v7ab3vJwUvSwi8K41JHHjfJuGv4shVAnAgwBZW5dswTM9X0Nq2FKQBPRxqyG_qY69pDRmJE7Awmsr8-hHH_yJ1zrsDbsv8_P68mQcG8Oh5KAIBr4qaZRx-jH0xucP-K6hWTdklXS6JC2OgVxKAK0m4dvaB3vDvHcK2NLY7YqYMnODSQ-MhA9cKC1yAMQ2sy6CLsdzLqRgTlFCdunFpBsVofchZ_PDsQYENPjRCAfJEZarZy6CgPCzNNpu4oM3jLtruoh44WiSiPTI6sixoOqdcThl3jy7o_3W_eF82yyKROpFyVa7VljzPI7OqXnNsUtnWdWyLA_lbZDBK3WT3wuCT8dfTUe8W64f46ap_oBbh0S7GHyNQnn7gKkoDKy_TX0zD9vjSXuUmNqcD5UIYmRfBZxfdIygPEKdppL0cgiFFxZpLKhXCeHkosGwC3uWFaPqi8sTa0fw7aicR1YGdk9HjuBzWoXp9Kwl3LZqDE3-YJ0Ja3_2oGBFM26HKXi_6AKZoB2ZHoUIBcaFTaFaXqyLk"
/// token_type : "Bearer"
/// expires_at : "2023-12-03 09:25:44"

class SingInModel {
  SingInModel({
      String? status, 
      String? message, 
      User? user, 
      String? accessToken, 
      String? tokenType, 
      String? expiresAt,}){
    _status = status;
    _message = message;
    _user = user;
    _accessToken = accessToken;
    _tokenType = tokenType;
    _expiresAt = expiresAt;
}

  SingInModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _accessToken = json['access_token'];
    _tokenType = json['token_type'];
    _expiresAt = json['expires_at'];
  }
  String? _status;
  String? _message;
  User? _user;
  String? _accessToken;
  String? _tokenType;
  String? _expiresAt;
SingInModel copyWith({  String? status,
  String? message,
  User? user,
  String? accessToken,
  String? tokenType,
  String? expiresAt,
}) => SingInModel(  status: status ?? _status,
  message: message ?? _message,
  user: user ?? _user,
  accessToken: accessToken ?? _accessToken,
  tokenType: tokenType ?? _tokenType,
  expiresAt: expiresAt ?? _expiresAt,
);
  String? get status => _status;
  String? get message => _message;
  User? get user => _user;
  String? get accessToken => _accessToken;
  String? get tokenType => _tokenType;
  String? get expiresAt => _expiresAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['access_token'] = _accessToken;
    map['token_type'] = _tokenType;
    map['expires_at'] = _expiresAt;
    return map;
  }

}