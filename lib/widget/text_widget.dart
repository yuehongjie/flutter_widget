import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '红色 + 黑色删除线 + 字体大小 25 ',
            style: TextStyle(
              color: Colors.red,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.black87,
              fontSize: 25,
            ),
          ),

          Text(

            '橙色 + 下划线 + 24 号',
            style: TextStyle(
              color: Colors.deepOrange,
              decoration: TextDecoration.underline,
              fontSize: 24,
            ),
          ),

          Text(
            '虚线上划线 + 23 号 + 倾斜',
            style: TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontStyle: FontStyle.italic,
              fontSize: 23,
            ),
          ),

          Text(
            '24 号 + 加粗 + 字体间距',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 6.0
            ),
          ),

        ],
      ),
    );
  }
}
