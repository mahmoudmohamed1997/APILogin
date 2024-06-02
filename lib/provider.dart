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
    dio.options.headers['version'] = '1.3.1';
    Response response = await dio.post('http://api.angazny.com/app/user/login',
        data: {
          "email": "aff@demo.demo",
          "password": "000111222",
        },
        options: Options(headers: {"version": "1.3.5"}));
    if (response == 200) {
      print('Eroor');
    }

    print(response);
    notifyListeners();
  }
}
