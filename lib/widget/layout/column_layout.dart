

import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //水平方向占据的空间  max 相当于 match_parent； min 相当于 wrap_content
      mainAxisSize: MainAxisSize.min,
      //水平方向子控件的对齐方式：如 平分剩余空间 spaceEvenly、居中 center、 第一个和最后一个控件之间的空间平分 spaceAround 等
      mainAxisAlignment: MainAxisAlignment.center,
      //竖直方向的子控件的对齐方式
      //crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        createChild(0),
        createChild(2),
        createChild(3),
        createChild(4),
        createChild(5),
      ],
    );
  }


  Widget createChild(int index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(4)
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Text(
        'child $index',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
