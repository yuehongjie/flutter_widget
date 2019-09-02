
import 'package:flutter/material.dart';

/// FractionallySizeBox 百分比布局，根据现有空间，来调整宽或高占比，已达到设置尺寸的目的
class FractionallySizeBoxLayout extends StatefulWidget {
  @override
  _FractionallySizeBoxLayoutState createState() => _FractionallySizeBoxLayoutState();
}

class _FractionallySizeBoxLayoutState extends State<FractionallySizeBoxLayout> {

  double widthFactor = 0.5;
  double heightFactor = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          width: 200,
          height: 200,
          color: Colors.blueGrey,
          child: FractionallySizedBox(
            //对齐方式，默认是居中
            alignment: Alignment.topLeft,
            //宽高比例因子
            widthFactor: widthFactor,
            heightFactor: heightFactor,
            child: Container(
              color: Colors.green,
              child: Text(
                '百分比布局，可超出父组件范围',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        Text(
          '改变 FractionallySizedBox 的 宽度百分比（此处取值 0.0 ~ 2.0）'
        ),

        Slider(
          min: 0.0,
          max: 2.0,
          value: widthFactor,
          onChanged: (newValue) {
            print('newValue : $newValue');
            setState(() {
              widthFactor = newValue;
            });
          },
          label: '$widthFactor',
        ),

        Text(
            '改变 FractionallySizedBox 的 高度百分比（此处取值 0.0 ~ 2.0）'
        ),

        Slider(
          min: 0.0,
          max: 2.0,
          value: heightFactor,
          onChanged: (newValue) {
            print('newValue : $newValue');
            setState(() {
              heightFactor = newValue;
            });
          },
          label: '$heightFactor',
        )
      ],
    );
  }
}
