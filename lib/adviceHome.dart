import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kk_advice/aboutButton.dart';
import 'package:kk_advice/dataList.dart';
import 'package:kk_advice/dataValues.dart';
import 'package:kk_advice/itemData.dart';
import 'package:kk_advice/reviewButton.dart';

class AdviceHome extends StatelessWidget {
  final dataKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    final List<ItemData> listOfItems = DataValues().getItemValues();
    var dlw = DataListWidget(
      itemDataList: listOfItems,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              'KK Advice',
              style: GoogleFonts.kalam(fontSize: 26, color: Colors.black),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.orange,
                  onPressed: () =>
                      Scrollable.ensureVisible(dataKey.currentContext) //Top
                  ),
              IconButton(
                icon: Icon(Icons.find_in_page),
                color: Colors.white,
                onPressed: () async {
                  final ItemData selected = await showSearch<ItemData>(
                      context: context, delegate: DataSearch());
                  if (selected != null) {
                    print("Item selected is: $selected");
                  }
                },
              ),
              ReviewButton(),
              AboutButton(),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Card(
                key: dataKey,
              ),
              dlw,
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<ItemData> {
  final List<ItemData> cities = DataValues()
      .getItemValues()
      .where((item) => item.type != 'title')
      .toList();

  final List<ItemData> recentCities = [
    ItemData(
        title: 'Cities',
        primaryText: 'Pune',
        secondaryText: '“ssss',
        description: '',
        refIcon: DataValues.getRandomIcon(),
        type: 'card'),
    ItemData(
        title: 'Cities',
        primaryText: 'Mumbai',
        secondaryText: '“ssss',
        description: '',
        refIcon: DataValues.getRandomIcon(),
        type: 'card'),
    ItemData(
        title: 'Cities',
        primaryText: 'Patna',
        secondaryText: '“ssss',
        description: '',
        refIcon: DataValues.getRandomIcon(),
        type: 'card'),
  ];

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
    print(context.widget.toString() + query);

    return Text('Searched for $query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<ItemData> suggestionList = query.isEmpty
        ? recentCities
        : cities
            .where((element) => element.primaryText
                .toLowerCase()
                .startsWith(query.toLowerCase()))
            .toList(); //DataValues().getItemValues();
    var dlw = DataListWidget(
      itemDataList: suggestionList,
    );

    return dlw;

    // return ListView.builder(
    //   itemBuilder: (context, index) => ListTile(
    //     onTap: () {
    //       query = suggestionList[index].primaryText;
    //       close(context, suggestionList[index]);
    //       //showResults(context);
    //     },
    //     leading: Icon(Icons.location_city),
    //     title: Text(suggestionList[index].primaryText),
    //   ),
    //   itemCount: suggestionList.length,
    // );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme;
  }
}
