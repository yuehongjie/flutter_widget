import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  final _bottomNavTitleList = ['信息', '通讯录', '发现'];
  int _selectedIndex = 1; //当前选中的索引

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('index $_selectedIndex : ${_bottomNavTitleList[_selectedIndex]}'),
      ),
      //底部导航按钮
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _navItem(Icons.chat, _bottomNavTitleList[0]),
          _navItem(Icons.contacts, _bottomNavTitleList[1]),
          _navItem(Icons.account_circle, _bottomNavTitleList[2]),
        ],
        currentIndex: _selectedIndex, //当前选中的索引
        fixedColor: Colors.deepPurple, //选中时的颜色
        onTap: _onItemTapped, //按下导航按钮
      ),
    );
  }

  //选中导航按钮，改变 选中的 index 值
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _navItem(IconData iconData, String title){
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      title: Text(title),
    );
  }
}
