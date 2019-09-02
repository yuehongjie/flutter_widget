
import 'package:flutter/material.dart';

/// LimitedBox：作用和 ConstrainedBox 类似，都是限制类型的组件，
/// 但是只能对 最大的宽高做限制，没有最小限制，
/// 只有在 LimitedBox 的最大宽、高没有被约束的时候， 限制才能生效
class LimitedBoxLayout extends StatefulWidget {
  @override
  _LimitedBoxLayoutState createState() => _LimitedBoxLayoutState();
}

class _LimitedBoxLayoutState extends State<LimitedBoxLayout> {

  double max = 200;
  double size = 100;
  double step = 20;

  @override
  Widget build(BuildContext context) {

    String text =  'Row 行布局，在水平方向没有限制，所有 LimitedBox maxWidth 会生效，但是竖直方向，最大高度为屏幕高度，所以  LimitedBox maxHeight 限制无效';
    return Row(
      children: <Widget>[
        Container(
          color: Colors.grey,
          width: 100,
        ),

        LimitedBox(
          maxWidth: 100,
          maxHeight: 300,
          child: Container(
            color: Colors.deepOrangeAccent,
            width: 400,
            child: Center(
              child:  Text(
                'LimitedBox，最大宽度 100,',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ),
        Expanded(
          child: Text(
            text,
          ),
        ),
      ],
    );
  }
}
