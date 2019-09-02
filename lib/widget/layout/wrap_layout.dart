
import 'package:flutter/material.dart';
import 'package:flutter_widget/common/common_data.dart';

///  Wrap （按宽高自动换行的布局）

class WrapLayout extends StatefulWidget {
  @override
  _WrapLayoutState createState() => _WrapLayoutState();
}

class _WrapLayoutState extends State<WrapLayout> {

  //自动换行布局的 主轴方向
  Axis _direction = Axis.horizontal;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[

        //水平方向铺满
        FractionallySizedBox(
          widthFactor: 1,

          //高度限制为最大 300
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.blueGrey,
            constraints: BoxConstraints(
              maxHeight: 300,
            ),
            //自动换行布局
            child: _wrapContent(),
          ),
        ),

        Container(height: 20,),

        //点击切换 Wrap 布局的主轴的方向
        RaisedButton(
          onPressed: (){
            setState(() {
              //切换 Wrap 布局的主轴方向
              if (_direction == Axis.horizontal) {
                _direction = Axis.vertical;
              }else {
                _direction = Axis.horizontal;
              }

            });
          },
          child: Text(_direction == Axis.horizontal ? '切换为竖直方向排列' : '切换为水平方向排列' ),
        ),

        Container(
          padding: EdgeInsets.all(10),
          child: Text('Wrap： 按宽高自动换行的布局。'
              '\ndirection ：设置主轴（排列）的方向，默认为水平；'
              '\nspace ：主轴方向上 child 之间的间距；'
              '\nrunSpace ：次轴方向上 child 之间的间距，若主轴为水平，则表示行间距；若主轴为竖直方向，则表示列间距'),
        ),

      ],

    );
  }

  Wrap _wrapContent() {

    List <Widget> itemList = [];

    CommonData.NameAvatarMap.forEach((name, avatar) {
      itemList.add(
        _item(name, avatar),
      );
    });

    return Wrap(
      direction: _direction,
      alignment: WrapAlignment.start,
      // 主轴方向的间距
      spacing: 10,
      //行间距（如果 direction 主轴方向是 horizontal ）或列间距（如果 direction 主轴方向是 vertical ）
      runSpacing: 12,
      //children
      children: itemList,
    );

  }

  Widget _item(String text, String avatarPath) {

    return Chip(
      avatar: CircleAvatar(
       backgroundImage: AssetImage(avatarPath),
      ),
      //去除标签的外边距
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: Text(text),
    );
  }
}
