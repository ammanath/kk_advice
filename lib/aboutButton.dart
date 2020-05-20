import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.info),
      color: Colors.lime,
      onPressed: () {
        showAboutDialog(context);
      },
    );
  }

  void showAboutDialog(BuildContext context) {
    var textAbout =
        "Unsolicited app on KK's 68 bits of unsolicitied life advice \n";
    String moreDetails = 'More Details: https://kk.org/thetechnium/68-bits-of-unsolicited-advice/ ';
    String youTube ='\nListen - https://www.youtube.com/watch?v=Zz70rcguxwk';
    String email = "\nFeedback: kkapp@ammanath.com";
    String thanks =  "\nThanks for trying my app! ";
    String signature = "\n\n- Brijesh";
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text(
              "About this app",
              style: GoogleFonts.amarante(fontSize: 26, color: Colors.black54,)
              )),
            content: Text.rich(
              TextSpan(
                text: textAbout[0],
                style: GoogleFonts.kalam(
                  color: Colors.black54,
                  letterSpacing: .5,
                  fontSize: 22,
                ),
                children: [
                  TextSpan(
                    text: textAbout.substring(1),
                    style: GoogleFonts.kalam(fontSize: 12, color: Colors.black54),
                  ),
                  TextSpan(
                    text: moreDetails,
                    style: GoogleFonts.kalam(fontSize: 12, color: Colors.black54),
                  ),
                  TextSpan(
                    text: email,
                    style: GoogleFonts.marvel(fontSize: 12,  ),
                  ),
                  TextSpan(
                    text: youTube,
                    style: GoogleFonts.marvel(fontSize: 12, ),
                  ),
                  TextSpan(
                    text: thanks,
                    style: GoogleFonts.kalam(fontSize: 12, color: Colors.black54),
                  ),
                  TextSpan(
                    text: signature,
                    style: GoogleFonts.dancingScript(fontSize: 20, color: Colors.blueGrey),
                  )
                ],
              ),
            ),
            elevation: 24.0,
            backgroundColor: Colors.blue[100],
            actions: <Widget>[
              RaisedButton(
                child: Text('Ok', style: GoogleFonts.amarante(fontSize: 26, color: Colors.black,)),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.blue[100],
              ),
            ],
          );
        });
  }
}
