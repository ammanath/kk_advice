import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kk_advice/itemData.dart';

class PopUpTextWidget extends StatelessWidget {
  const PopUpTextWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final ItemData dataText;

  @override
  Widget build(BuildContext context) {
    ClipboardManager.copyToClipBoard(dataText.toString());
    return AlertDialog(
        backgroundColor: Colors.deepOrange[100],
        content: DisplayWidget(dataText: dataText));
  }
}

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final ItemData dataText;

  @override
  Widget build(BuildContext context) {
    if (dataText.type == 'title') {
      return normalTextDialog();
    } else if (dataText.secondaryText.length > 200) {
      return normalTextDialog();
    } else {
      return buildTypewriterAnimatedText();
    }
  }

  TypewriterAnimatedTextKit buildTypewriterAnimatedText() {
    return TypewriterAnimatedTextKit(
      text: [
        "${dataText.primaryText} ${dataText.secondaryText} ${dataText.description}"
      ],
      totalRepeatCount: 4,
      pause: Duration(milliseconds: 1500),
      speed: Duration(milliseconds: 60),
      textStyle: TextStyle(
        fontFamily: 'Typewriter',
        color: Colors.deepOrange,
        letterSpacing: .5,
        fontSize: 22,
      ),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }

  Widget normalTextDialog() {
    var text =
        '${dataText.primaryText == '' ? '' : dataText.primaryText + ' '}${dataText.secondaryText == '' ? '' : dataText.secondaryText + ' '}${dataText.description}';
    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          text: text[0],
          style: GoogleFonts.kalam(fontSize: 35, color: Colors.pink),
          children: [
            TextSpan(
              text: text.substring(1),
              style: GoogleFonts.kalam(fontSize: 20, color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
