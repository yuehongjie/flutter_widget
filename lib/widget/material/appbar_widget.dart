import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/toast.dart';


class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() {
    return _AppBarWidgetState();
  }
}

class _AppBarWidgetState extends State<AppBarWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar 应用按钮示例 '),
        //为 AppBar 添加按钮
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            tooltip: '搜索',
            onPressed: (){
              Toast.show('点击搜索按钮', context);
            },
          ),

          IconButton(
            icon:Icon(Icons.more_horiz),
            tooltip: 'More',
            onPressed: (){
              Toast.show('点击 More 按钮', context);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('AppBar 及 添加操作按钮'),
      ),
    );
  }
}