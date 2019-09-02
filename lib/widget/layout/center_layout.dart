import 'package:flutter/material.dart';

/// 居中布局，子元素处于水平和垂直方向的居中位置
class CenterLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center( //居中
      child: Text(
        'Hello Flutter',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
