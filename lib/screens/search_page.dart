import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const routeName = '/Search-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Serach Page"),
        ],
      ),
    );
  }
}
