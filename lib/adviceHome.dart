import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kk_advice/aboutButton.dart';
import 'package:kk_advice/dataList.dart';
import 'package:kk_advice/dataSearch.dart';
import 'package:kk_advice/dataValues.dart';
import 'package:kk_advice/homeButton.dart';
import 'package:kk_advice/itemData.dart';
import 'package:kk_advice/reviewButton.dart';
import 'package:kk_advice/searchButton.dart';

class AdviceHome extends StatefulWidget {
  @override
  _AdviceHomeState createState() => _AdviceHomeState();
}

class _AdviceHomeState extends State<AdviceHome> {
  final dataKey = new GlobalKey();
  bool refreshed = false;
  final List<ItemData> listOfItems = DataValues().getItemValues();

  @override
  Widget build(BuildContext context) {
    DataListWidget dlw =
        DataListWidget(itemDataList: listOfItems, textStyle: getTextStyle());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              'KK Advice',
              style: GoogleFonts.kalam(fontSize: 26, color: Colors.black),
            ),
            actions: <Widget>[
              HomeButton(dataKey: dataKey),
              SearchButton(),
              ReviewButton(),
              AboutButton(),
            ]),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 2));
            setState(() {
              refreshed = !refreshed;
            });
            return;
          },
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Card(
                  key: dataKey,
                ),
                dlw,
              ],
            ),
          ),
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }

  getTextStyle() {
    if (refreshed) {
      return GoogleFonts.kalam(
        fontSize: 14,
        color: Colors.black,
      );
    } else {
      return GoogleFonts.amarante(
        fontSize: 14,
        color: Colors.white70,
      );
    }
  }
}




