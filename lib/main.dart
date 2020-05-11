import 'package:flutter/material.dart';
import 'package:kk_advice/adviceHome.dart';

void main() {
  runApp(KKAdviceApp());
}

class KKAdviceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KK Advice',
      
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AdviceHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}


