import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/toast.dart';

///表单组件：实现简单的登录 UI
class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() {
    return _FormWidgetState();
  }
}

class _FormWidgetState extends State<FormWidget> {

  //全局 key，用来获取 Form 表单组件
  GlobalKey<FormState> loginKey = GlobalKey();
  //用户名
  String userName;
  //密码
  String password;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        // Form 组件设置全局 key
        key: loginKey,
        child: Column(
          children: <Widget>[

            //用户名表单
            TextFormField(
              //在没有输入的时候，显示的输入提示
              decoration: InputDecoration(
                labelText: '请输入用户名',
              ),
              onSaved: (value) {
                print('保存用户名: $value');
                userName = value;
              },

            ),

            //密码表单
            TextFormField(
              decoration: InputDecoration(
                labelText: '请输入密码',
              ),

              obscureText: true,
              validator: (value) {
                return value.length < 6 ? "密码长度不够 6 位" : null;
              },
              onSaved: (value) {
                print('保存密码: $value');
                password = value;
              },

            ),

            //间距
            Container(height: 32, width: 0,),

            //登录按钮（百分比布局包裹 使宽度铺满）
            FractionallySizedBox(
              widthFactor: 1,
              child: RaisedButton(
                //调用 login() 方法，验证数据
                onPressed: login,
                child: Text(
                  '登录',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
              ),
            )

          ],
        ),
      ),
    );
  }

  //登录 验证数据
  void login(){
    //读取当前 Form 的状态
    FormState loginForm = loginKey.currentState;

    //验证表单是否通过（TextFormField 实现了 validator 才会去验证）
    if(loginForm.validate()) {
      //保存，回调 TextFormField 的 onSave
      loginForm.save();
      Toast.show('验证通过', context, gravity: Toast.CENTER);
    }
  }
}