
import 'package:flutter/material.dart';

/// Padding 布局，及填充布局，也即所谓的内边距，用于处理容器和其子元素之间的间距
/// 与其对应的是 margin ，处理容器和其他外部组件之间的间距
/// 有些组件也自带这些属性，如 Container
class PaddingLayout extends StatelessWidget {

  //装饰器，设置边线
  final BoxDecoration decoration = BoxDecoration(

      border: Border.all(
          color: Colors.green,
          width: 8
      )
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //padding 作为属性，容器上下左右填充都为 20
        padding: EdgeInsets.all(20),
        decoration: decoration,
        child: Container(
          width: 100,
          height: 100,
          decoration: decoration,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
