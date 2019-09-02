import 'package:flutter/material.dart';


class ListViewHorizontalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //水平列表
    return Container(
      height: 220, //约束列表高度，否则高度会铺满
      child: ListView(
        //设置列表的方向
        scrollDirection: Axis.horizontal,
        // ListView 的 child 都是 widget
        children: createListItems(),
      ),
    );
  }

  List<Widget> createListItems() {
    List<Widget> items = [];
    for(int i = 0; i < 15; i++) {
      items.add(
         Container(
           width: 160,
           decoration: BoxDecoration(
             gradient: LinearGradient( colors: [Colors.greenAccent,  Colors.lightBlue, ])
           ),

           child: Center(
             child: Text(
               '水平列表 $i',
               style: TextStyle(color: Colors.white, fontSize: 18),
             ),
           ),
         )
      );
    }

    return items;
  }
}
