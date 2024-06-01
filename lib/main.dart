import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:log/body_1.dart';
import 'package:log/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Homescr());
}

class Homescr extends StatelessWidget {
  const Homescr({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Myprovider(),
      child: ChangeNotifierProvider(
        create: (context) => Provider2(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Body1(),
        ),
      ),
    );
  }
}
