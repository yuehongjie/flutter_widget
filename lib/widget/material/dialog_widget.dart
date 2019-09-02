
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/toast.dart';

class DialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('SimpleDialog 示例'),
            onPressed: (){
              showSimpleDialog(context);
            },
          ),

          RaisedButton(
            child: Text('AlertDialog 示例'),
            onPressed: (){
              showAlertDialog(context);
            },
          ),

          RaisedButton(
            child: Text('自定义样式 Dialog 示例'),
            onPressed: (){
              showCustomDialog(context);
            },
          ),
        ],
      ),
    );
  }

  ///显示 SimpleDialog
  showSimpleDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        //简单对话框
        return SimpleDialog(
          title: Text('SimpleDialog 标题'),
          //对话框内容
          children: <Widget>[
            //对话框选项，也可以是其他的 widget
            SimpleDialogOption(
              onPressed: (){
                Toast.show('第一行信息', context);
                //dismiss 对话框
                Navigator.pop(context);
              },
              child: Text('第一行信息'),
            ),
            //对话框选项
            SimpleDialogOption(
              onPressed: (){
                Toast.show('第二行信息', context);
                //dismiss 对话框
                Navigator.pop(context);
              },
              child: Text('第二行信息'),
            )
          ],
        );
      }
    );
  }
  ///显示 AlertDialog
  showAlertDialog(BuildContext context){
    showDialog(
        context: context,
        builder: (context){
          //简单对话框
          return AlertDialog(
            title: Text('AlertDialog 标题'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('确定要删除吗？'),
                  Text('一旦删除不可恢复！'),
                ],
              ),
            ),

            actions: <Widget>[
              FlatButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('确定'),
              ),

              FlatButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('取消'),
              ),
            ],
          );
        }
    );
  }

  ///显示 自定义样式 Dialog
  showCustomDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context) {
        return CustomDialog();
      }
    );
  }
}

///自定义弹窗，继承自 Dialog 实现 build 方法
class CustomDialog extends Dialog {

  static const RoundedRectangleBorder _defaultDialogShape =
  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4.0)));
  static const double _defaultElevation = 24.0;

  @override
  Widget build(BuildContext context) {
    final DialogTheme dialogTheme = DialogTheme.of(context);
    return  Center(
      child: Material(
        color: Theme.of(context).dialogBackgroundColor,
        elevation: elevation ?? dialogTheme.elevation ?? _defaultElevation,
        shape: shape ?? dialogTheme.shape ?? _defaultDialogShape,
        type: MaterialType.card,
        child: Container(
          width: 140,
          height: 140,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //圆形进度条
              CircularProgressIndicator(),
              //文本提示
              Text('加载中...')
            ],
          ),
        ),
      ),
    );
  }
}



