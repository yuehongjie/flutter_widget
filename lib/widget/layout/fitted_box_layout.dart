
import 'package:flutter/material.dart';

/// 缩放布局，在自己的尺寸范围内，缩放并调整 child 的位置，是 child 适合其尺寸，就像 Android 中图片的 scaleType 属性一样
/// 可以参考 image_widget.dart 中图片的对齐方式
class FittedBoxLayout extends StatefulWidget {
  @override
  _FittedBoxLayoutState createState() => _FittedBoxLayoutState();
}

class _FittedBoxLayoutState extends State<FittedBoxLayout> {

  // 缩放方式
  List<BoxFit> boxFitList = [
    BoxFit.cover,         //等比填充整个容器，内容可能会超过容器范围
    BoxFit.fill,          //铺满，可能会拉伸变形
    BoxFit.contain,       //宽高等比填充，宽或高有一方等比适应控件，不会变形
    BoxFit.fitWidth,        //宽度适应控件，高度如果超过控件，会被裁剪，不会变形
    BoxFit.fitHeight,     //高度适应控件，宽度如果超过控件，会被裁剪，不会变形
    BoxFit.scaleDown,       //会根据情况缩小范围，有时和 contain 效果差不多，有时和 none 差不多
    BoxFit.none,          //没有任何填充模式，原样显示
  ];

  //对应的标题
  List<String> boxFitTitleList = [
    'BoxFit.cover',
    'BoxFit.fill',
    'BoxFit.contain',
    'BoxFit.fitWidth',
    'BoxFit.fitHeight',
    'BoxFit.scaleDown',
    'BoxFit.none',
  ];

  int typeIndex;

  @override
  void initState() {
    // BoxFit.none
    typeIndex = boxFitList.length - 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[

        //FittedBox 的外部约束 限制大小 都则默认的 FittedBox 是包裹 child 的，缩放没有效果的
        Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          //缩放布局
          child: FittedBox(
            //通过修改 fit 的值，会得到不同的效果
            fit: boxFitList[typeIndex],
            child: Text(
              '缩放布局',
              style: TextStyle(
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ),

        //fit 缩放操作按钮列表
        Expanded(
          //Expanded 包裹，铺满剩余的空间，因为 ListView 需要有高度
          child:ListView.builder(
            itemCount: boxFitList.length,
            itemBuilder: (context , index) {
              return createItem(index, boxFitTitleList[index]);
            },
          ),
        ),
      ],
    );
  }

  createItem(index, String title){
    return RaisedButton(
      child: Text(title),
      onPressed: (){
        changeBoxFitType(index);
      },
    );
  }

  changeBoxFitType(int type) {
    setState(() {
      typeIndex = type;
    });
  }
}
