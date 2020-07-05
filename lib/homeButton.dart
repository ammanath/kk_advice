import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    Key key,
    @required this.dataKey,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> dataKey;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.home),
        color: Colors.yellow,
        onPressed: () =>
            Scrollable.ensureVisible(dataKey.currentContext) //Top
        );
  }
}