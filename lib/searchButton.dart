import 'package:flutter/material.dart';
import 'package:kk_advice/dataSearch.dart';
import 'package:kk_advice/itemData.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.find_in_page),
      color: Colors.white,
      onPressed: () async {
        final ItemData selected = await showSearch<ItemData>(
            context: context, delegate: DataSearch());
        if (selected != null) {
          print("Item selected is: $selected");
        }
      },
    );
  }
}