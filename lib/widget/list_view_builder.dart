import 'package:flutter/material.dart';
import 'package:flutter_widget/common/common_data.dart';
import 'package:flutter_widget/widget/toast.dart';

//当列表数据比较多时适用长列表组件，如淘宝后台订单，手机通讯录等，线上各种列表数据等
class ListViewBuilder extends StatelessWidget {

  //假数据
  final List<String> listData =  CommonData.IconsMap.keys.toList();


  @override
  Widget build(BuildContext context) {

    //列表
    return  ListView.builder(
      itemCount: listData?.length ?? 0, //listData 为空的时候，用 0 代替
      itemBuilder: _createItem,
    );
  }

  //根据数据 自定义 item 布局
  Widget _createItem(BuildContext context, int index) {

    // key 值，用于显示及获取图标
    var key = listData[index];
    return GestureDetector( //手势识别器检测点击事件
      //点击事件
      onTap: () {
        Toast.show('点击了 $key', context, gravity: Toast.CENTER);
      },

      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Colors.grey,
                width: 0.3
            ),
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Row( //水平布局 控件在一行排列

          //元素之间空白填充
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[

            //文本
            Text(
              key,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
              ),
            ),

            //图标
            Icon(
              CommonData.IconsMap[key],
              color: Colors.blueGrey,
              size: 16,
            ),
          ],
        ),
      ),
    );

  }

}
