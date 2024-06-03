import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'body_1.dart';

class Myprovider with ChangeNotifier {
  // void onprise()
  int numone = 0;
  void plus() {
    numone++;
    notifyListeners();
  }
}

class Provider2 with ChangeNotifier {
  final dio = Dio();

  void postLogin() async {
    Response response = await dio.post(
      'http://api.angazny.com/app/user/login',
      data: {
        "API version": "1.3",
        "email": "aff@demo.demo",
        "password": "000111222",
      },
    );
    if (response == 200) {
      print('Eroor');
    }

    print(response);
    notifyListeners();
  }
}
