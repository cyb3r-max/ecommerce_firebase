import 'package:backdrop/backdrop.dart';
import 'package:ecommerce_using_firebase/widget/back_layer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/Home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackdropScaffold(
        headerHeight: MediaQuery.of(context).size.height,
        backLayerBackgroundColor: Colors.black12,
        appBar: BackdropAppBar(
          title: Center(child: const Text("Demo Shop")),
          leading: BackdropToggleButton(
            icon: AnimatedIcons.home_menu,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/57865985?v=4'),
                  ),
                ))
          ],
        ),
        backLayer: BackLayer(),
        frontLayer: const Center(
          child: Text("Front Layer"),
        ),
      ),
    );
  }
}
