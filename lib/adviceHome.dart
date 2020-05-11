import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kk_advice/aboutButton.dart';
import 'package:kk_advice/dataList.dart';
import 'package:kk_advice/dataValues.dart';
import 'package:kk_advice/itemData.dart';
import 'package:kk_advice/reviewButton.dart';

class AdviceHome extends StatelessWidget {
  final dataKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    List<ItemData> listOfItems = DataValues().getItemValues();

    var dlw = DataListWidget(
      itemDataList: listOfItems,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('KK Advice' , style: GoogleFonts.kalam(fontSize: 26, color: Colors.black),), 
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            color: Colors.orange,
            onPressed: () =>
                Scrollable.ensureVisible(dataKey.currentContext)//Top
          ),
          ReviewButton(),
          AboutButton(),
        ]),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Card(
                key: dataKey,
              ),
              dlw,
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }
}
