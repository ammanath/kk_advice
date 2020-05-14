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
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () => {
                        showSearch(context: context, delegate: DataSearch()),
                      }),
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

class DataSearch extends SearchDelegate<String> {
  final cities = [
    'Mumbai',
    'Crawford',
    'Kadappa'
        'Puri',
    'Trichur',
    'Jammu',
    'Delhi',
    'Indore',
    'Patna',
    'Vizag',
    'Chennai',
    'Calcutta',
    'Pune',
    'Ottapalam',
    'Sangamner',
    'Nashik',
    'Thane',
    'Noida',
    'Bangalore',
    'Bhopal',
    'Kochi',
    'Ahemdabad',
    'Kota',
    'Lonavala'
  ];

  final recentCities = [
    'Pune',
    'Vizag',
    'Chennai',
    'Calcutta',
  ];

// final recentCities = [
//       ItemData(
//           title: 'TTT',
//           primaryText: '',
//           secondaryText: '',
//           description: 'ddd ',
//           refIcon: DataValues.getRandomIcon(),
//           type: 'title'),
//       ItemData(
//           title: 'TTT',
//           primaryText: 'ppp',
//           secondaryText: '“ssss',
//           description: '',
//           refIcon: DataValues.getRandomIcon(),
//           type: 'card'),
//     ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), 
    onPressed: () {query="";})];
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
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList =
        query.isEmpty ? recentCities : 
        cities.where((element) => element.toLowerCase().startsWith(query.toLowerCase())).toList(); //DataValues().getItemValues();

    // return ListView.builder(itemBuilder: (context, index)=>ListTile(leading:Icon(Icons.location_city),title: Text(suggestionList[index].primaryText.toString()),
    //     ),
    //     itemCount: suggestionList.length,);
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}
