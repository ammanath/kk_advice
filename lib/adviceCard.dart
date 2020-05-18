import 'package:flutter/material.dart';
import 'package:kk_advice/itemData.dart';
import 'package:kk_advice/popUpText.dart';
class AdviceCardWidget extends StatelessWidget {
  const AdviceCardWidget({
    Key key,
    @required this.itemData,
  }) : super(key: key);

  final ItemData itemData;

  @override
  Widget build(BuildContext context) {
    var secondaryStyle = TextStyle(
      fontSize: 18,
      color: Colors.black45,
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          child: ListTile(
              leading: itemData.refIcon,
              title: Text.rich(
                TextSpan(
                  text: itemData.primaryText,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [TextSpan(
                    text:' ' + itemData.secondaryText ,
                    style: secondaryStyle)],
                
                ),),
              onTap: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return PopUpTextWidget( dataText: itemData,);
                        }),
                  },
                  ),
          color: Colors.lightBlue[600],
        ),
      ),
    );
  }


}
