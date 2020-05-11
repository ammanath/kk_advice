import 'package:flutter/material.dart';
import 'package:kk_advice/dataCard.dart';
import 'package:kk_advice/itemData.dart';

class DataListWidget extends StatelessWidget {
  DataListWidget({
    Key key,
    @required this.itemDataList,
  }) : super(key: key);

  final List<ItemData> itemDataList;

  @override
  Widget build(BuildContext context) {
    List<ItemData> temp = [];
    List<Widget> widgets = [];
    String title = '';
    var dataCardWidget;
    var last = itemDataList.last;
    itemDataList.forEach((element) {
      if (title == '') {
        title = element.title;
      }
      if (title == element.title) {
        temp.add(element);
      } 
      if ((title != element.title) || element == last) {
        dataCardWidget = DataCardWidget(itemList: temp);
        widgets.add(dataCardWidget);
        temp=[];
        title = element.title;       
        temp.add(element);
      }
    });

    return Column(
      children: widgets,
    );
  }

  Iterable<Widget> convertToWidgets(List<ItemData> temp) {
    List<Widget> li = [];
    temp.forEach((element) {
      li.add(Text(
          element.primaryText == '' ? element.title : element.primaryText));
    });
    return li;
  }
}
