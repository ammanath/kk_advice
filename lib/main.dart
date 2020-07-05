import 'package:flutter/material.dart';
import 'package:kk_advice/adviceHome.dart';

void main() {
  runApp(KKAdviceApp());
}

class KKAdviceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AdviceHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
