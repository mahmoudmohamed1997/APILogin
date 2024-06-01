import 'package:flutter/material.dart';
import 'body_1.dart';

class Testscreen extends StatefulWidget {
  const Testscreen({super.key});

  @override
  State<Testscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Testscreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CircularProgressIndicator(
          strokeWidth: BorderSide.strokeAlignCenter,
        ),
      ),
    );
  }
}
