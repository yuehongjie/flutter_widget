import 'package:flutter/material.dart';

//网格布局
class GridViewWidget extends StatelessWidget {

  //行数
  final int lines = 20;
  //列数
  final int crosses = 2;

  @override
  Widget build(BuildContext context) {

    //通过 GridView.count 创建网格布局，也可以是其他方式
    return GridView.count(
      //scrollDirection: Axis.horizontal, //水平滑动 则变量行数和列数就反过来了
      //每行 2 列元素
      crossAxisCount: crosses,
      //行元素之间的间距
      mainAxisSpacing: 5,
      //列元素之间的间距
      crossAxisSpacing: 5,
      // Grid 的内边距
      padding: EdgeInsets.all(5),
      // item 的宽高比
      childAspectRatio: 2,
      // 元素
      children: createGridItems(),
    );
  }

  List<Widget> createGridItems(){

    List<Widget> items = [];

    //行
    for(int i = 0; i < lines; i++) {
      //列
      for(int j = 0; j < crosses; j++) {

        items.add(
          //第 i 行 第 j 列 元素
          Container(
            //设置高度是没有用的，需要设置 Grid item 的宽高比，即 childAspectRatio
            height: 30,
            // Container 内容居中
            alignment: Alignment.center,
            //装饰器
            decoration: BoxDecoration(
              //背景渐变
              gradient: LinearGradient(
                colors: i % 2 == 0 ? [Colors.teal[50], Colors.teal[100]] : [ Colors.teal[100], Colors.teal[50]],
              ),
            ),
            child: Text('第 ${i+1} 行 第 ${j+1}列') ,
          )
        );

      }
    }

    return items;

  }


}
