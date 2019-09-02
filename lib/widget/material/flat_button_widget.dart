import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/toast.dart';

class FlatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton( //扁平按钮
        onPressed: (){
          Toast.show('FlatButton：扁平按钮', context);
        },
        child: Text('FlatButton : Click Me', style: TextStyle(fontSize: 18),),
      ),
    );
  }
}
