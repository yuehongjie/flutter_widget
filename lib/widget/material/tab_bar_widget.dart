
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //添加 DefaultTabController 关联 TabBar 及 TabBarView
    return DefaultTabController(
      length: items.length,
      child: Scaffold( // DefaultTabController 的 child 一般是一个 AppBar 中有 TabBar 的 Scaffold
        appBar: AppBar(
          title: Text('TabBar 选项卡示例'),
          bottom: TabBar( //选项卡组件 这里的 bottom 理解为 AppBar 的按钮部分
            //选项卡比较多，允许滚动
            isScrollable: true,
            //选项卡列表
            tabs: items.map((item) {
              //创建 Tab 选项组件
              return Tab(
                text: item.title,
                icon: Icon(item.icon),
              );
            }).toList(),
          ),
        ),

        body: TabBarView(//选项卡视图
          children: items.map((item) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: SelectedView(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}

//被选中的选项卡显示的视图（布局）
class SelectedView extends StatelessWidget{

  final ItemView item;

  SelectedView(this.item);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Column(
        //垂直居中
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            item.icon,
            size: 128,
            color: textStyle.color,
          ),
          Text(
            item.title,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

//选项卡模型
class ItemView {
  final String title;   //标题
  final IconData icon;

  const ItemView({this.title, this.icon});  //图标

}

//选项卡数据
const List<ItemView> items = const <ItemView> [
  const ItemView(title: '自驾', icon: Icons.directions_car),
  const ItemView(title: '自行车', icon: Icons.directions_bike),
  const ItemView(title: '轮船', icon: Icons.directions_boat),
  const ItemView(title: '公交车', icon: Icons.directions_bus),
  const ItemView(title: '火车', icon: Icons.directions_transit),
  const ItemView(title: '步行', icon: Icons.directions_walk),
];
