
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/toast.dart';

/// iOS 风格按钮
class CupertinoButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //iOS 风格的按钮
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          // iOS 风格按钮
          CupertinoButton(
            child: Text('iOS 风格按钮'),
            onPressed: (){
              Toast.show('wow~', context);
            },
          ),

          CupertinoButton(
            child: Text('iOS 风格按钮'),
            //可用颜色
            color: Colors.blue,
            //按下时的透明度，默认是 0.1
            pressedOpacity: 0.7,
            //内边距 默认左右: 64.0  上下：14.0
            padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
            //不可点击颜色
            disabledColor: Colors.grey,
            //圆角 默认 8.0
            borderRadius: BorderRadius.circular(6),
            onPressed: (){
              Toast.show('oh~', context);
            },
          ),

        ],
      ),
    );
  }

}
