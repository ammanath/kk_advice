import 'package:flutter/material.dart';
import 'package:kk_advice/itemData.dart';
import 'package:kk_advice/popUpText.dart';
import 'package:share/share.dart';

class AdviceCardWidget extends StatelessWidget {
  const AdviceCardWidget({
    Key key,
    @required this.itemData,
    @required this.textStyle,
  }) : super(key: key);

  final ItemData itemData;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    var secondaryStyle = TextStyle(
      fontSize: 18,
      color: Colors.black45,
    );
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Card(
        child: Container(
          child: ListTile(
            leading: InkWell(
              child: itemData.refIcon,
              onTap: () {
                print('In Inkwell tap');
                Share.share(
                  '${itemData.primaryText} \n https://play.google.com/store/apps/details?id=com.ammanath.kk_advice \n #kkapp',
                  subject: "KK's Advice",
                );
              },
            ),
            title: Text.rich(
              TextSpan(
                text: itemData.primaryText,
                style:
                    textStyle, //GoogleFonts.kalam(fontSize: 14, color: Colors.black, ),
                children: [
                  TextSpan(
                      text: ' ' + itemData.secondaryText, style: secondaryStyle)
                ],
              ),
            ),
            onTap: () => {
              print('In List Tap'),
              showDialog(
                  context: context,
                  builder: (context) {
                    return PopUpTextWidget(
                      dataText: itemData,
                    );
                  }),
            },
          ),
          color: Colors.orange[600],
        ),
      ),
    );
  }
}
