import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
    String textAbout =
        'Unsolicited app on KK\'s 68 bits of unsolicited  life advice \n';
    String url = 'https://kk.org/thetechnium/68-bits-of-unsolicited-advice/ ';
    String youTube = 'https://www.youtube.com/watch?v=Zz70rcguxwk';
    String email = 'mailto:kkapp@ammanath.com?subject=Feedback_about_kkapp';
    String thanks = '\nThanks for trying my app! ';
    String signature = '\n\n- Brijesh';
    String version = '\nv1.2';

    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Center(
                child: Text("About this app",
                    style: GoogleFonts.amarante(
                      fontSize: 26,
                      color: Colors.deepOrange,
                    ))),
            content: Text.rich(
              TextSpan(
                text: textAbout[0],
                style: GoogleFonts.rumRaisin(
                  color: Colors.deepOrange,
                  fontSize: 22,
                ),
                children: [
                  TextSpan(
                    text: textAbout.substring(1),
                    style: GoogleFonts.dancingScript(
                        fontSize: 18, color: Colors.deepOrange),
                  ),
                  TextSpan(
                    text: thanks,
                    style: GoogleFonts.dancingScript(
                        fontSize: 18, color: Colors.deepOrange),
                  ),
                  TextSpan(
                    text: signature,
                    style: GoogleFonts.dancingScript(
                        fontSize: 20, color: Colors.deepOrange[600]),
                  ),
                  TextSpan(
                    text: version,
                    style: GoogleFonts.dancingScript(
                        fontSize: 8, color: Colors.deepOrange[600]),
                  )
                ],
              ),
            ),
            elevation: 24.0,
            backgroundColor: Colors.orange[50],
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.open_in_browser),
                color: Colors.red,
                alignment: Alignment.bottomLeft,
                tooltip: 'Read in browser',
                onPressed: () => _launchURL(url),
              ),
              IconButton(
                icon: Icon(Icons.feedback),
                color: Colors.pink,
                alignment: Alignment.bottomLeft,
                tooltip: 'email',
                onPressed: () => _launchURL(email),
              ),
              IconButton(
                icon: Icon(Icons.videocam),
                color: Colors.green,
                alignment: Alignment.bottomLeft,
                tooltip: 'YouTube',
                onPressed: () => _launchURL(youTube),
              ),
              RaisedButton(
                child: Text('Ok',
                    style: GoogleFonts.amarante(
                      fontSize: 26,
                      color: Colors.deepOrange,
                    )),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.orange[50],
              ),
            ],
          );
        });
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
