import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kk_advice/itemData.dart';

class DataValues {
  List<ItemData> getItemValues() {

   
    var dummy = [
      ItemData(
          title: 'TTT',
          primaryText: '',
          secondaryText: '',
          description: 'ddd ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'TTT',
          primaryText: 'ppp',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    return dummy;
  }

  Icon getRandomIcon([bool randomColor]) {
    List<Color> clrs = [
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.lime,
      Colors.orange,
      Colors.black
    ];
    int rndColor = Random().nextInt(clrs.length);
    int codePoint = 59471 + Random().nextInt(100);
    var colr = randomColor == true ? clrs[rndColor] : null;

    var icon = Icon(
      IconData(codePoint, fontFamily: 'MaterialIcons'),
      color: colr,
    );
    return icon;
  }
}
