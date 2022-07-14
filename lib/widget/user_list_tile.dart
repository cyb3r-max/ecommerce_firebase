import 'package:flutter/material.dart';

class UserListTiles extends StatelessWidget {
  IconData lead_icon;
  Color color;
  String title;
  String? subTitle;
  IconData? trailIcon;
  VoidCallback? trailCallBack;
  VoidCallback? onTap;

  UserListTiles(
      {required this.lead_icon,
      required this.color,
      required this.title,
      this.subTitle,
      this.trailIcon,
      this.trailCallBack,
      this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          lead_icon,
          color: Colors.redAccent,
        ),
        title: Text(title),
        subtitle: subTitle == null ? null : Text(subTitle!),
        onTap: onTap,
        trailing: IconButton(
          icon: Icon(trailIcon),
          onPressed: trailCallBack,
        ),
      ),
    );
  }
}
