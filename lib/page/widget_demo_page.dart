import 'package:flutter/material.dart';

class WidgetDemoPage extends StatelessWidget {

  final String title;
  final Widget widget;
  final bool hideTitle;

  WidgetDemoPage(this.title, this.widget, {this.hideTitle = false});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: hideTitle ? null: AppBar(
        title: Text(title),
      ),

      body: widget ?? Text('What ? ? ? ? ? ?'),
    );
  }
}
