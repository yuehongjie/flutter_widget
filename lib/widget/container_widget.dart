import 'package:flutter/material.dart';


class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        //alignment: Alignment.center,
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 8.0
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Flutter',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28.0),
        ),
      ),
    );
  }
}
