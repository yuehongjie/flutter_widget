import 'package:flutter/material.dart';
import 'package:flutter_widget/common/common_data.dart';

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() {
    return _ImageWidgetState();
  }
}

class _ImageWidgetState extends State<ImageWidget> {

  List<BoxFit> boxFitList = [
    BoxFit.cover,         //图片宽高与控件宽高从中心等比例缩放，图片可能会裁剪、拉伸，但不会变形；类似于 Android 的 CenterCrop
    BoxFit.fill,          //全图显示，铺满控件，可能会拉伸变形
    BoxFit.contain,       //全图显示，宽或高有一方适应控件，不会变形
    BoxFit.fitWidth,        //宽度适应控件，高度如果超过控件，会被裁剪，不会变形
    BoxFit.fitHeight,     //高度适应控件，宽度如果超过控件，会被裁剪，不会变形
    BoxFit.scaleDown,       //和 contain 效果差不多，但此属性不允许显示超过原图片大小
    BoxFit.none,          //原图显示，超出则裁剪
  ];

  int typeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 3),
              borderRadius: BorderRadius.circular(4),
            ),
            width: 250,
            height: 300,
            child: Image.asset(
              CommonData.CommonPic,
              fit: boxFitList[typeIndex],
            ),
          ),

          RaisedButton(
            child: Text('BoxFit.cover'),
            onPressed: (){
              changeBoxFitType(0);
            },
          ),
          RaisedButton(
            child: Text('BoxFit.fill'),
            onPressed: (){
              changeBoxFitType(1);
            },
          ),

          RaisedButton(
            child: Text('BoxFit.contain'),
            onPressed: (){
              changeBoxFitType(2);
            },
          ),
          RaisedButton(
            child: Text('BoxFit.fitWidth'),
            onPressed: (){
              changeBoxFitType(3);
            },
          ),
          RaisedButton(
            child: Text('BoxFit.fitHeight'),
            onPressed: (){
              changeBoxFitType(4);
            },
          ),
          RaisedButton(
            child: Text('BoxFit.scaleDown'),
            onPressed: (){
              changeBoxFitType(5);
            },
          ),

          RaisedButton(
            child: Text('BoxFit.none'),
            onPressed: (){
              changeBoxFitType(6);
            },
          ),

        ],
      ),
    );
  }

  changeBoxFitType(int type) {
    setState(() {
      typeIndex = type;
    });
  }
}

