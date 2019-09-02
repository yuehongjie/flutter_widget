
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  // TextEditingController 绑定 TextField，实现文本变化监听及设置文字
  final TextEditingController controller = TextEditingController();
  // 输入的文字
  String inputText = '';

  @override
  void initState() {
    super.initState();
    //添加文字变化监听器
    controller.addListener((){
      setState(() {
        inputText = controller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: TextField(
            //绑定 controller 获取及修改文字
            controller: controller,
            //最多可输入多少字符
            maxLength: 100,
            //最大行数，如果不设置 maxLines 则初始就显示两行
            maxLines: 2,
            //最小行数
            minLines: 1,
            //是否是密码， 如果为 true 的话，则输入后显示 ···
            obscureText: false,
            //文本对齐方式
            textAlign: TextAlign.start,
            //文本样式
            style: TextStyle(fontSize: 15, color: Colors.black87),
            onChanged: (text) {
              print('文本变化：$text');
            },
            onSubmitted: (text) {
              print('内容提交回调：$text');
            },
            //是否可用， false 禁用
            enabled: true,
            //装饰器
            decoration: InputDecoration(
              //是否填充
              filled: true,
              //填充颜色：灰色
              fillColor: Colors.grey.shade200,
              //告知用户这个输入框的用途
              helperText: '用户名',
              //前置图标
              prefixIcon: Icon(Icons.person),
              //后缀文字提示
              suffixText: '用户名',
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: FractionallySizedBox( //横向铺满
            widthFactor: 1,
            child: Text(
              '文字变化监听: $inputText',
              style: TextStyle(
                color: Colors.blueGrey
              ),
            ),
          ),
        )

      ],
    );
  }


}

