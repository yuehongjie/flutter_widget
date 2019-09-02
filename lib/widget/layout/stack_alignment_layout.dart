

import 'package:flutter/material.dart';
import 'package:flutter_widget/common/common_data.dart';

/// Stack 层叠布局
/// Stack 通过 Alignment 布局（对齐）子控件，默认是左上角
/// Stack 是一个多 child 的的控件，child 放入的顺序层叠，相当于 Android 中 RelativeLayout
class StackAlignmentLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //Stack 布局
      child: Stack(
        //子控件在右上角对齐 （没有 Positioned 定位 child 时，控件根据指定的对齐方式相互布局）
        alignment: Alignment.topRight,
        children: <Widget>[

          //底部添加一个头像
          CircleAvatar(
            backgroundImage: AssetImage(CommonData.Pic_1),
            //半径，值越大，图片越大
            radius: 100,
          ),

          //头像上添加一个“标签”，即文本
          Container(
            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
            color: Colors.orangeAccent,
            child: Text(
              'Vip',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
