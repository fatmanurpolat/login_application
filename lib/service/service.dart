import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:user_information/model/login_model.dart';

class Service {
  final String baseUrl = "http://217.79.178.34/test/login.php";
  final dio = Dio();
  Future<LoginModel?> loginCall({
    required String username,
    required String password,
  }) async {
    Map<String, dynamic> data = {"username": username, "password": password};
    var response = await dio.post(baseUrl, data: data);
    if (response.statusCode == 200) {
      print(response.data);
      var result = LoginModel.fromJson(jsonDecode(response.data));
      return result;
    } else {
      throw ('Bir sorun oluştu ${response.statusCode}');
    }
  }
}


//oldu sanırım :D
//bir dk
//gelen jsonu decode edip okuyabiliyorsunuz. çözüm bu başka bir sorunuz var mı hocam?
//yok çok teşekkür ederim rica ederim hayırlı akşamlar //size de