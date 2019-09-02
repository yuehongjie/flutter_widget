

import 'package:flutter/material.dart';

/// Row 水平布局，完成子组件在水平方向的排列

//      水平方向占据的空间  max 相当于 match_parent； min 相当于 wrap_content
//      mainAxisSize: MainAxisSize.max,

//      //水平方向子控件的对齐方式：如 平分剩余空间 spaceEvenly、居中 center、 第一个和最后一个控件之间的空间平分 spaceAround 等
//      mainAxisAlignment: MainAxisAlignment.spaceAround,

//      //竖直方向的子控件的对齐方式
//      crossAxisAlignment: CrossAxisAlignment.center,
class RowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(

      //水平方向占据的空间  max 相当于 match_parent； min 相当于 wrap_content
      mainAxisSize: MainAxisSize.max,
      //水平方向子控件的对齐方式：如 平分剩余空间 spaceEvenly、居中 center、 第一个和最后一个控件之间的空间平分 spaceAround 等
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      //竖直方向的子控件的对齐方式
      crossAxisAlignment: CrossAxisAlignment.center,
      //子控件
      children: <Widget>[
        createChild(0),
        createChild(1),
        createChild(2),
      ],
    );
  }

  Widget createChild(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4)
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Text('child $index'),
    );
  }
}
