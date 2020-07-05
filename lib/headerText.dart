
import 'package:flutter/material.dart';
import 'package:kk_advice/itemData.dart';
import 'package:kk_advice/popUpText.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({
    Key key,
    @required this.itemData,
  }) : super(key: key);

  final ItemData itemData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
          child: Text(
        itemData.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.orange[100],
          fontSize: 24,
          letterSpacing: 8.0,
          fontWeight: FontWeight.bold,
        ),
        textWidthBasis: TextWidthBasis.parent,
            
      ),
      onTap: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return PopUpTextWidget( dataText: itemData,);
                        }),
                  },
    );
  }
}

