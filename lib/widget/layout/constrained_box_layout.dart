
import 'package:flutter/material.dart';

/// ConstrainedBox：作用是限定子元素 child 的最大宽度、高度 和 最小宽度、高度
/// Dialog 中就使用了 ConstrainedBox
class ConstrainedBoxLayout extends StatefulWidget {
  @override
  _ConstrainedBoxLayoutState createState() => _ConstrainedBoxLayoutState();
}

class _ConstrainedBoxLayoutState extends State<ConstrainedBoxLayout> {

  String text = '';
  double min = 60;
  double max = 120;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          //指定子 Child 的最大最小宽高
          ConstrainedBox(
            //通过设置该属性 添加约束限制
            constraints: BoxConstraints(
              minHeight: min,
              minWidth: min,
              maxHeight: max,
              maxWidth: max,
            ),

            //通过改变输入的文字的数量，以改变内容区域的大小
            child: Container(
              color: Colors.blueGrey,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // ConstrainedBox 解释
          Container(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'ConstrainedBox： 作用是限定子元素 child 的最大宽度、高度 和 最小宽度、高度；这里是 最小 $min， 最大 $max',
            ),
          ),

          TextField(
            minLines: 1,
            maxLines: 10,
            decoration: InputDecoration(
              hintText: '在这里输入文字 以改变 BoxConstraints 的内容区域的大小（耐心...）'
            ),
            onChanged: (value){
              setState(() {
                text = value;
              });
            },
          )

        ],
      ),
    );
  }
}
