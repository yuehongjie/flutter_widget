import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'FloatingActionButton 示例',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          child: const Icon(Icons.touch_app),
          //长按提示信息
          tooltip: 'FloatingActionButton',
          //前景色
          foregroundColor: Colors.white,
          //背景色
          backgroundColor: Colors.blue,
          //未点击时 z 轴高度（阴影值）
          elevation: 7,
          //点击时 z 轴高度（阴影值）
          highlightElevation: 14,
          //点击事件
          onPressed: (){
            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('点击了 FloatingActionButton'), backgroundColor: Colors.grey,),
            );
          },
          //大小为 mini 版
          mini: false,

        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 55,
        ),
      ),
    );
  }
}
