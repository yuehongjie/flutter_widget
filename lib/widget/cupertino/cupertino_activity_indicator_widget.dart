

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// iOS 风格 loading 提示器
class CupertinoActivityIndicatorWidget extends StatefulWidget {
  @override
  _CupertinoActivityIndicatorWidgetState createState() => _CupertinoActivityIndicatorWidgetState();
}

class _CupertinoActivityIndicatorWidgetState extends State<CupertinoActivityIndicatorWidget> {

  bool animating = true;

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CupertinoActivityIndicator(// iOS 风格 loading 提示器
            //值越大 加载的图形越大
            radius: 30,
            // true 播放加载动画； false 停止加载动画
            animating: animating,
          ),

          Container(
            height: 20,
          ),

          RaisedButton(
            onPressed: (){
              setState(() {
                animating = !animating;
              });
            },
            child: Text(animating ? 'Stop Loading' : 'Start Loading'),
          )
        ],
      ),
    );
  }
}
