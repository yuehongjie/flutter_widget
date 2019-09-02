import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/toast.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //需要设置 appBar 否则 drawer （貌似）无法出来
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: Text('Drawer 抽屉（侧拉）组件示例', style: TextStyle(fontSize: 20),),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //设置用户信息： 头像、用户名、Email 等
            UserAccountsDrawerHeader(
              //用户名
              accountName: Text('乌拉拉乌拉拉'),
              //邮箱
              accountEmail: Text('1419699711@qq.com'),
              //头像
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/1.png'),
              ),
              //当 用户名或者邮箱 被点击时会触发
              //如果设置了 则邮箱右侧会出现一个箭头图标
              onDetailsPressed: (){
                Toast.show('点击用户信息', context);
              },
            ),

            //菜单列表
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.color_lens),),
              title: Text('个性装扮'),
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.photo),),
              title: Text('我的相册'),
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.wifi),),
              title: Text('免流量特权'),
            )
          ],
        ),
      ),
    );
  }
}
