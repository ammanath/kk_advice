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
    String listen ='\nListen:';
    String youTube =' https://www.youtube.com/watch?v=Zz70rcguxwk';
    String fb = "\nFeedback:";
    String email = " kkapp@ammanath.com";
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
                style: GoogleFonts.mali(
                  color: Colors.black54,
                  letterSpacing: .5,
                  fontSize: 22,
                ),
                children: [
                  TextSpan(
                    text: textAbout.substring(1),
                    style: GoogleFonts.mali(fontSize: 14, color: Colors.black54),
                  ),
                  TextSpan(
                    text: moreDetails,
                    style: GoogleFonts.mali(fontSize: 14, color: Colors.black54),
                  ),
                  TextSpan(
                    text: fb,
                    style: GoogleFonts.mali(fontSize: 12,  ),
                  ),
                  //TODO: Make email clickable
                  TextSpan(
                    text: email,
                    style: GoogleFonts.shadowsIntoLight(fontSize: 14, color: Colors.blue ),
                  ),
                  TextSpan(
                    text: listen,
                    style: GoogleFonts.mali(fontSize: 12, ),
                  ),
                  //TODO: Show a youtube icon and make it clickable
                  TextSpan(
                    text: youTube,
                    style: GoogleFonts.mali(fontSize: 12, color: Colors.pink ),
                  ),
                  TextSpan(
                    text: thanks,
                    style: GoogleFonts.mali(fontSize: 12, color: Colors.black54),
                  ),
                  TextSpan(
                    text: signature,
                    style: GoogleFonts.dancingScript(fontSize: 20, color: Colors.blue),
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
