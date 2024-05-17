
import 'package:flutter/material.dart';


class WhiteBoxIndicator extends StatelessWidget {
  final double width;
  final double height;


  const WhiteBoxIndicator({
    Key? key,
    this.width = 50.0,
    this.height = 50.0,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,

        ),
    );
  }
}
