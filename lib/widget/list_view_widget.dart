import 'package:flutter/material.dart';
import 'package:flutter_widget/common/common_data.dart';


class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //列表
    return ListView(
      // ListView 的 child 都是 widget
      children: createListItems(),
    );
  }

  List<Widget> createListItems() {
    List<Widget> items = [];

    CommonData.IconsMap.forEach((key, value) {

      items.add(
        ListTile(
          title: Text(key),
          leading: Icon(value),
        )
      );

    });

    return items;
  }
}
