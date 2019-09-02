import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/toast.dart';


class IconBtnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          // --------------- 图标组件 --------------
          Icon(
            Icons.people_outline,
            color: Colors.grey,
            size: 40,
          ),

          Text('Icon: 图标组件，不可点击'),
          Container(height: 20,),

          // --------------- 图标按钮组件 --------------
          IconButton(
            icon: Icon(Icons.touch_app, color: Colors.blue, size: 40,),
            tooltip: '按下操作',
            onPressed: (){
              toast('Icon Button Clicked', context);
            },
          ),

          Text('IconButton: 图标按钮组件，有点击事件'),
          Container(height: 20,),

          // --------------- 突起按钮组件 --------------
          RaisedButton(

            child: Text('RaisedButton'),
            onPressed: (){
              toast('RaisedButton Clicked', context);
            },
          ),

          Text('RaisedButton，child 一般是一个 Text，用来显示按钮文本'),
          Container(height: 20,),

        ],
      ),
    );
  }

  toast(String msg, BuildContext context) {
    Toast.show(msg, context);
  }
}
