

import 'package:flutter/material.dart';

/// 表格布局，每一行的高度由其内容决定，每一列的宽度可以单独设置，未指定的列宽，将会使用 defaultColumnWidth
class TableLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //表格
          createTable(),
          //注释
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              '表格布局：\n每一行的高度由该行最高的单元格内容决定；'
                  '\n每一列的宽度可以通过 columnWidths 属性单独设置；'
                  '\n未指定的列宽，将会使用 defaultColumnWidth 属性（默认均分）；'
                  '\n defaultVerticalAlignment 用来指定每一个单元格的内容，在垂直方向的对齐方式，默认放置在顶部'
            ),
          )
        ],
      ),
    );
  }

  //创建表格
  Table createTable() {
    //表格布局
    return Table(

      //表格每一个单元格，在垂直方向的对齐方式，默认是将 child 放置在单元格顶部，这里居中
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      //设置表格有多少列，并指定每一列的宽度，未指定的列，将会使用 defaultColumnWidth
      columnWidths: <int, TableColumnWidth> {
        0: FixedColumnWidth(100),
        1: FixedColumnWidth(60),
        2: FixedColumnWidth(80),
        3: FixedColumnWidth(80),
      },

      //设置表格边框
      border: TableBorder.all(
        color: Colors.blueGrey,
        width: 1,
        style: BorderStyle.solid,
      ),

      // 行数据列表 每一行是一个 TableRow
      children: <TableRow> [

        //第一行数据
        TableRow(
            decoration: BoxDecoration(color: Colors.green),
            children: [
              headerItem('姓名'),
              headerItem('性别'),
              headerItem('年龄'),
              headerItem('身高'),
            ]
        ),

        //第二行数据
        TableRow(
            children: [
              commonItem('张三'),
              commonItem('男'),
              commonItem('26'),
              commonItem('178'),
            ]
        ),

        //第三行数据
        TableRow(
            children: [
              commonItem('尼古拉斯·赵四·洛夫斯基'),
              commonItem('女'),
              commonItem('25'),
              commonItem('160'),
            ]
        ),
      ],
    );
  }

  //第一行元素，作为表头元素
  Widget headerItem(String text) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  //其他行的元素，作为普通表格数据
  Widget commonItem(String text) {
    return Container(
      //color: Colors.blue,
      padding: EdgeInsets.all(5),
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
