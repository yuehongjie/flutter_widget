

import 'package:flutter/material.dart';
import 'package:flutter_widget/common/common_data.dart';

///Align 对齐布局 将子控件按照指定的方式对齐，并根据子控件的大小调整自己的大小
class AlignLayout extends StatefulWidget {
  @override
  _AlignLayoutState createState() => _AlignLayoutState();
}

class _AlignLayoutState extends State<AlignLayout> {

  //对齐方式
  List<Alignment> alignList = [
    Alignment.topLeft,      //上左
    Alignment.topCenter,    //上中
    Alignment.topRight,     //上右
    Alignment.centerRight,  //中右
    Alignment.bottomRight,  //下右
    Alignment.bottomCenter, //下中
    Alignment.bottomLeft,   //下左
    Alignment.centerLeft,   //中左
    Alignment.center,       //居中
  ];
  //索引
  int alignIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //图片 动态改变位置
        Align(
          alignment: alignList[alignIndex],
          child: Image.asset(CommonData.Pic_1, width: 128, height: 128,),
        ),

        //改变图片位置的按钮
        Align(
          alignment: FractionalOffset.center,
          child: RaisedButton(
            onPressed: (){
              //下一个位置
              setState(() {
                nextIndex();
              });
            },
            child: Text('改变 Align 对齐方式'),
          ),
        )
      ],
    );
  }

  nextIndex() {
    //下一个索引
    alignIndex ++;

    //如果超过最大值，从头开始
    if(alignIndex >= alignList.length) {
      alignIndex = 0;
    }
  }
}
