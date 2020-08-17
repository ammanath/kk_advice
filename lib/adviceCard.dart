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
              leading: itemData.refIcon,
              title: Text.rich(
                TextSpan(
                  text: itemData.primaryText,
                  style: textStyle, //GoogleFonts.kalam(fontSize: 14, color: Colors.black, ),
                  children: [TextSpan(
                    text:' ' + itemData.secondaryText ,
                    style: secondaryStyle)],
                
                ),),
              // onTap: () => {
              //       showDialog(
              //           context: context,
              //           builder: (context) {
              //             return PopUpTextWidget( dataText: itemData,);
              //           }),
              //     },
              onTap: (){
                              Share.share(itemData.primaryText,
                                  subject: "KK's Advice",
                                  );
                            },
                  ),
          color: Colors.orange[600],
        ),
      ),
    );
  }


}
