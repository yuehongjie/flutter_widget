
import 'package:flutter/material.dart';

/// SizedBox： 强制其子 widget 有指定的宽度和高度
class SizedBoxLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // SizeBox 指定固定宽高
      child: SizedBox(
        width: 200,
        height: 300,
        // Card 的宽高就是 SizeBox 指定的
        child: const Card(
          color: Colors.blueGrey,
          child: Text(
            'SizedBox: \n\n 强制其子 widget 有指定的宽度和高度',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
