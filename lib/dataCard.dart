import 'package:flutter/material.dart';
import 'package:kk_advice/adviceCard.dart';
import 'package:kk_advice/headerText.dart';
import 'package:kk_advice/itemData.dart';

class DataCardWidget extends StatelessWidget {
  const DataCardWidget({
    Key key,
    @required this.itemList,
  }) : super(key: key);

  final Iterable<ItemData> itemList;

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    var defaultIcon;
    itemList.forEach((element) {
      if (element.type == 'title') {
        children.add(HeaderTextWidget(itemData: element));
        defaultIcon = element.refIcon;
      } else if (element.type == 'card') {
        if(element.refIcon==null){
          element.refIcon=defaultIcon;
        }
        children.add(AdviceCardWidget(itemData: element));
      }
    });
    return Card(
        color: Colors.lightBlue[800], child: Column(children: children));
  }
}
