import 'package:flutter/material.dart';

class SizedBoxWidth extends StatelessWidget {
  double width;
  SizedBoxWidth({required this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

class SizedBoxHeight extends StatelessWidget {
  double height;
  SizedBoxHeight({required this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
