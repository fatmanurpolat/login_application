import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:user_information/components/loading_pop_up.dart';
import 'package:user_information/service/service.dart';
import 'package:user_information/views/home.dart';

class LoginRiverpod extends ChangeNotifier {
  final service = Service();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void fetch() {
    loadingPopUp();
    service
        .loginCall(username: username.text, password: password.text)
        .then((value) {
      print(value);
      if (value != null) {
        Grock.back();
        Grock.toRemove(Home());
      } else {
        Grock.back();
        Grock.snackBar(title: 'hata', description: 'Bir sorun oluştu');
      }
    });
  }
}
