


import 'package:flutter/material.dart';
import 'package:flutter_widget/common/common_data.dart';

/// Stack 层叠布局 尺寸和最大的子节点尺寸一致
/// Stack 通过 Positioned 组件定位子控件
class StackPositionedLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 居中显示
    return Center(
      //层叠布局
      child: Stack(
        children: <Widget>[

          //图片，默认在 Stack 的左上角
          Image.asset(
            CommonData.CommonPic,
            //给图片设置一个宽度，因为 Stack 没有外部约束时，Image 也没有约束，会铺满
            width: 200,
          ),

          //定位子控件
          Positioned(
            //定位属性： top、bottom、left、right 子元素距离 Stack 各边界的距离

            //距离 Stack 底部的距离
            bottom: 10,
            //距离 Stack 左侧的距离
            left: 10,
            //显示一个坐标
            child: Container(
              //装饰一下
              decoration: BoxDecoration(
                //半透明的背景
                color: Color(0xaa000000),
                //圆角
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
              //行布局（显示 位置图标 + 地址）
              child: Row(
                children: <Widget>[
                  //位置图标
                  Icon(
                    Icons.location_on,
                    size: 13,
                    color: Colors.white,
                  ),
                  //间距
                  Container(width: 2, height: 0,),
                  //地址
                  Text(
                    '中关村·海淀·北京',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
