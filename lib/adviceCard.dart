import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      padding: const EdgeInsets.all(1.0),
      child: Card(
        child: Container(
          child: ListTile(
              leading: itemData.refIcon,
              title: Text.rich(
                TextSpan(
                  text: itemData.primaryText,
                  style: GoogleFonts.kalam(fontSize: 14, color: Colors.black, ),
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
