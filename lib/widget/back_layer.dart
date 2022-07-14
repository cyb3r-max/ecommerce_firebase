import 'package:ecommerce_using_firebase/widget/sized_box_white_space.dart';
import 'package:flutter/material.dart';

class BackLayer extends StatelessWidget {
  const BackLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16)),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _bakcLayerButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onPressed;

  _bakcLayerButton({
    required this.title,
    required this.iconData,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(iconData),
      label: Text(title),
    );
  }
}
