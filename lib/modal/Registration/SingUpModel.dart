import 'User.dart';

/// status : "Success"
/// message : "Registration Successful"
/// user : {"first_name":"morsalin","last_name":"islam","phone":"01764972574","email":"morsalin@gmail.com","updated_at":"2022-12-03T09:24:43.000000Z","created_at":"2022-12-03T09:24:43.000000Z","id":102}
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMWRkYzU2NWI2YjYxMzJiZTk3MTZjZjVlYTEzM2UxZGE1MmM4N2RiNTYzZTE4MGJiOGQ4YTMzODNhNTMxMTYyYTI2OTcyZTBmNzJhZTQyN2MiLCJpYXQiOjE2NzAwNTk0ODMuNTk5MjA2OTI0NDM4NDc2NTYyNSwibmJmIjoxNjcwMDU5NDgzLjU5OTIxNDA3Njk5NTg0OTYwOTM3NSwiZXhwIjoxNzAxNTk1NDgzLjU3ODc4NDk0MjYyNjk1MzEyNSwic3ViIjoiMTAyIiwic2NvcGVzIjpbXX0.M-FSpibV0JXZz8M6svvCP5Au5sp5e5_Wr_VJvROj6KXfOnViMEoDL-MvoYg9ngdcULKzzMVpEq3V7Q-n-7TX8ZEhKojeoGIqQ5GkF_PQrVBhJnirkQBR58EW0RJSnp-h_z90xICnw_KxsccMEkmecGkvfvBKytJx3gEULtPQHL4fPm_S0XGCfAEKAjGU0W47IcaONdBnSqxiC-SUr3Q_VIM-giUI7ja-GRk4I3OmkJO33LQT_9zxu6jgtCC7eFcX1gMNez2xCa6gA8iOg282q8EXdHaCJcRfF5QTHVOO_iE7DsWBrXdf4WvSgwrBi_NVO9F33Rzaj4x2TZHrP4-hdKblKF7WVC29bOhJ4QL5mCL8Rtt7DRXwRAT_8Q6ZaHk0kbnCUWX_x6B6EIOMEM-_wIFv0MIo6UzRdlFNWivxwGdhVVKsuHuIG0x8GfrfLu7OXP_9imeoKaEDdjpd0NqJKP7ZqmwUgSUY6rYqGdC7EsF3Qx5kfiWBvf4vug16qo8OZu5H7KX75SSHqVQh33BJ5Qifye6bX2RahNI2Rj9drYS1k7zNdTVmidSv3mSdTP5fDsklArQ6FEz2534t6LRO6cn_GsxlzJWOFMoUNM4m5YZgHKqgmpaEwajhHCBYsd6NRjH3urDPqU_q4JmSeMBwwIG73sM1kFk5elGoVpbro7g"
/// token_type : "Bearer"
/// expires_at : "2023-12-03 09:24:43"

class SingUpModel {
  SingUpModel({
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

  SingUpModel.fromJson(dynamic json) {
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