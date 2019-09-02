import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/toast.dart';

/// PopupMenuButton 弹出菜单
/// 参考 https://blog.csdn.net/mengks1987/article/details/85055975
class PopupMenuButtonWidget extends StatelessWidget {

  double _x = 0;
  double _y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton'),
        actions: <Widget>[
          // 在 AppBar 使用 菜单
          _popupMenu(context),
        ],
      ),

      body: Center(
        //点击弹出菜单
        child: GestureDetector(
          child: Text('PopupMenuButton 弹出菜单示例', style: TextStyle(fontSize: 18),),
          onTapDown: (TapDownDetails tapDetails){
            _x = tapDetails.globalPosition.dx;
            _y = tapDetails.globalPosition.dy;
            print('x = $_x, y = $_y');
          },
          onTap: (){

            showPopMenu(context, RelativeRect.fromLTRB(_x, _y, MediaQuery.of(context).size.width - _x, 0));

          },
        ),
      ),
    );
  }

  ///除了在 AppBar 使用外，还可以点击按钮显示菜单弹窗
  showPopMenu(BuildContext context, RelativeRect position) {

    //菜单对象 这里要指定泛型，否则 popupMenu.onSelected 会报类型不匹配错误
    PopupMenuButton<String> popupMenu = _popupMenu(context);

    //菜单弹出 function
    showMenu<String>(
        context: context,
        position: position,
        items: _popupMenuItems(),
    ).then((String selectedValue) {
      print('selectedValue: $selectedValue');
      if (selectedValue == null) {
        if (popupMenu.onCanceled != null) popupMenu.onCanceled();
      }else{
        if (popupMenu.onSelected != null) popupMenu.onSelected(selectedValue);
      }

    });
  }

  ///菜单弹窗
  PopupMenuButton  _popupMenu(BuildContext context) {
    return PopupMenuButton<String> (

      offset: Offset(0, 100),
      //菜单项构造器
      itemBuilder: (BuildContext context) => _popupMenuItems(),
      tooltip: "点击弹出菜单",
      onSelected: (String selected) {
        switch (selected) {
          case 'share':
            Toast.show('分享', context);
            break;
          case 'settings':
            Toast.show('设置', context);
            break;
        }
      },
      onCanceled: (){
        print('取消');
      },
    );
  }

  ///菜单项
  List<PopupMenuEntry<String>> _popupMenuItems() {
    return <PopupMenuEntry<String>> [
      //菜单项1
      const PopupMenuItem<String>(
        child: ListTile(
          leading: Icon(Icons.share),
          title: Text('分享'),
        ),
        value: 'share',
      ),
      //分割线
      PopupMenuDivider(),
      //菜单项2
      const PopupMenuItem<String>(
        child: ListTile(
          leading: Icon(Icons.settings),
          title: Text('设置'),
        ),
        value: 'settings',
      ),
    ];
  }

}
