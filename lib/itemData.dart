import 'package:flutter/cupertino.dart';

class ItemData {
  String title;
  String primaryText;
  String secondaryText;
  String description;
  Widget refIcon;
  String refUrl;
  String type;

  ItemData({
    this.title,
    this.primaryText,
    this.secondaryText,
    this.description,
    this.refIcon,
    this.refUrl,
    this.type,
  });
}