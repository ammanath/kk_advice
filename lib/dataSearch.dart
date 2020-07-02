import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kk_advice/dataList.dart';
import 'package:kk_advice/dataValues.dart';
import 'package:kk_advice/itemData.dart';

class DataSearch extends SearchDelegate<ItemData> {
  final List<ItemData> cities = DataValues()
      .getItemValues()
      .where((item) => item.type != 'title')
      .toList();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Searched for $query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<ItemData> suggestionList = query.isEmpty
        ? cities.sublist(5, 8)
        : cities
            .where((element) =>
                element.primaryText.toLowerCase().contains(query.toLowerCase()))
            ?.toList();
    var dlw = DataListWidget(
      itemDataList: suggestionList,
      textStyle: GoogleFonts.kalam(fontSize: 14, color: Colors.black, ),
    );
    return SingleChildScrollView(child: dlw);
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme;
  }
}
