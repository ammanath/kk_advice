import 'package:flutter/material.dart';
import 'package:kk_advice/aboutButton.dart';
import 'package:kk_advice/dataList.dart';
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
            title: Text('KK\'s Advice',
                style: TextStyle(
                  fontFamily: 'Gugi',
                  fontSize: 22,
                  color: Colors.white70,
                )),
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
        backgroundColor: Colors.orange[900],
      ),
    );
  }

  getTextStyle() {
    if (refreshed) {
      return TextStyle(
        fontFamily: 'School',
        fontSize: 16,
        color: Colors.black87,
      );
    } else {
      return TextStyle(
        fontFamily: 'Amarante',
        fontSize: 14,
        color: Colors.white70,
      );
    }
  }
}
