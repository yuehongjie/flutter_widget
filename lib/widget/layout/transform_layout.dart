

import 'package:flutter/material.dart';

/// Transform 的作用就是做矩阵转换，可以对 child 做平移、旋转和缩放等操作
/// 更多骚操作，详见 https://book.flutterchina.club/chapter5/transform.html
class TransformLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueGrey,
        //矩阵变换
        child: Transform(
          //Z 轴旋转，即绕着垂直屏幕方向的轴 旋转 n 弧度
          transform: Matrix4.rotationZ(0.45),
          //相对于坐标系原点的对齐方式
          alignment: Alignment.topRight,
          child: Container(
            padding: EdgeInsets.all(8),
            color: Color(0xffe8581c),
            child: Text(
              'Transform Z 轴旋转',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
