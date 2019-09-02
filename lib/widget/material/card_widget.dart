

import 'package:flutter/material.dart';
import 'package:flutter_widget/common/common_data.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        child: Card(
          elevation: 2,
          //如果 children 中有图片在边缘，则默认的圆角可能没法显示，被图片覆盖，这是需要设置圆角，最重要的是设置 clipBehavior
          //shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(5)),
          clipBehavior: Clip.antiAlias,

          child: Column(
            //min 竖直方向包裹内容； max 竖直方向充满屏幕
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              //图片
              Image.asset(CommonData.CommonPic),
              //文字描述
              Container(
                padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
                child: Text(
                  '是他 是他 就是他~ ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
