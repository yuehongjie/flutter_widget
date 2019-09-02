
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// iOS 风格的对话框
class CupertinoAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //iOS 风格的按钮
      child: CupertinoButton(
        child: Text('iOS 风格对话框'),
        onPressed: (){
          show(context);
        },
      ),
    );
  }

  show(BuildContext context) {
    //方法调用，显示 iOS 对话框
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          //标题
          title: Text('提示'),
          //内容（当然也可以是其他的 Widget）
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(height: 10,),
                Text('确定要删除？', style: TextStyle(fontSize: 15),),
                Text('一旦删除数据将不可恢复！', style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
          //操作按钮
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                '确定',
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            ),

            CupertinoDialogAction(
              child: Text(
                '取消',
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        );
      },

    );
  }


}
