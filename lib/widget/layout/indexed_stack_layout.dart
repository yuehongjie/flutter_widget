
import 'package:flutter/material.dart';

/// IndexedStack 继承自 Stack ，作用是显示第 index 个 child， 其他都是不可见的，
/// 所以 IndexedStack 的尺寸永远和最大的子节点尺寸一致
class IndexedStackLayout extends StatefulWidget {
  @override
  _IndexedStackLayoutState createState() => _IndexedStackLayoutState();
}

class _IndexedStackLayoutState extends State<IndexedStackLayout> {


  int _index = 0;
  int _childCount = 4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IndexedStack(
          // 只显示第 index 个 child
          index: _index,
          // 子 child 列表
          children: createChildList(),
        ),

        //切换显示的 child 的索引
        RaisedButton(
          onPressed: (){
            setState(() {
              _index ++;
              //防止下标越界
              if(_index >= _childCount) {
                _index = 0;
              }
            });
          },

          child: Text('Show Next Child'),
        )
      ],
    );
  }

  // Child 列表
  List<Widget> createChildList() {
    List<Widget> children = [];
    for(int i=0; i < _childCount; i++) {
      children.add(createChild(i));
    }
    return children;
  }

  //Child
  Widget createChild(int index) {
    return Container(
      //index 从 0 开始，需要加 1 否则就宽高就是 0 了
      width: (index + 1) * 100.0,
      height: (index + 1) * 100.0,
      //换个颜色玩玩
      color: index % 2 == 0 ? Colors.orange : Colors.teal,
      child: Center(
        child: Text(
          '第 $index 个 Child',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
