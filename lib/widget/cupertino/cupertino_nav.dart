
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// iOS 风格的导航组件集
class CupertinoNavWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //最外层导航 （包含底部导航栏和导航对应的页面）
    return CupertinoTabScaffold(

      //底部导航栏
      tabBar: CupertinoTabBar(
        //导航栏颜色
        backgroundColor: CupertinoColors.lightBackgroundGray,
        //导航栏选项
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            title: Text('主页'),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.conversation_bubble,
            ),
            title: Text('聊天'),
          ),

        ],
      ),

      //导航对应页面
      tabBuilder: (context, index) {

        //导航选项绑定的视图
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return HomePage();
                break;
              case 1:
                return ChatPage();
                break;
              default:
                return Container();
            }
          },
        );
      },
    );
  }
}

///主页
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //基本布局结构，包含内容和顶部导航栏
    return CupertinoPageScaffold(
      child: Center(
        child: Text('首页',),
      ),

      //顶部导航（中间标题部分）
      navigationBar: CupertinoNavigationBar(
        middle: Text('主页'),
      ),
    );
  }
}

///聊天页面
class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('聊天面板',),
      ),

      navigationBar: CupertinoNavigationBar(
        //导航栏 左、中、右三个部分
        leading:  Icon(CupertinoIcons.person),
        middle: Text('U Chat'),
        trailing: Icon(CupertinoIcons.add),
      ),
    );
  }
}

