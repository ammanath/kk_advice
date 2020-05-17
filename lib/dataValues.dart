import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kk_advice/itemData.dart';

class DataValues {
  List<ItemData> getItemValues() {
    var cities = [
      ItemData(
          title: 'Cities',
          primaryText: '',
          secondaryText: '',
          description: 'List of cities ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Cities',
          primaryText: 'Pune',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Mumbai',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Patna',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Trichur',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Kochi',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Delhi',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Chennai',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Patna',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Kota',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Nashik',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Cities',
          primaryText: 'Nagpur',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

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

    return cities;
  }

  static Icon getRandomIcon([bool randomColor]) {
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
