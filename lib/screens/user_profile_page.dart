import 'dart:io';

import 'package:ecommerce_using_firebase/provider/theme_data.dart';
import 'package:ecommerce_using_firebase/widget/user_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);
  static const routeName = '/user-profile-screen';

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  double top = 0;
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                stretch: true,
                expandedHeight: 250,
                flexibleSpace: LayoutBuilder(
                  builder: (ctx, cons) {
                    return FlexibleSpaceBar(
                      background: Image.network(
                        'https://static.toiimg.com/thumb/msid-73806691,width-1070,height-580,imgsize-1245798,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg',
                        fit: BoxFit.cover,
                      ),
                      title: AnimatedOpacity(
                        duration: Duration(milliseconds: 300),
                        opacity: top <= 200 ? 1.0 : 0.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png',
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text('Flluter E-commerce')
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView(
                    primary: false,
                    shrinkWrap: true,
                    children: [
                      Text(
                        'User Name',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      UserListTiles(
                        onTap: () {},
                        lead_icon: Icons.favorite,
                        color: Colors.redAccent,
                        title: 'Favorites',
                        trailIcon: Icons.arrow_forward_ios,
                        trailCallBack: () {},
                      ),
                      UserListTiles(
                        onTap: () {},
                        lead_icon: Icons.shopping_cart_outlined,
                        color: Colors.indigoAccent,
                        title: 'Cart',
                        trailIcon: Icons.arrow_forward_ios,
                        trailCallBack: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Setings',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Consumer<ThemeNotifier>(
                          builder: (context, notifier, _) {
                            return SwitchListTile.adaptive(
                                secondary: notifier.isDark
                                    ? Icon(Icons.dark_mode)
                                    : Icon(Icons.light_mode),
                                title: notifier.isDark
                                    ? Text('Dark Mode')
                                    : Text('Light Mode'),
                                value: notifier.isDark,
                                onChanged: (value) {
                                  notifier.toggleThme(value);
                                });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Personal Information',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      UserListTiles(
                        onTap: () {},
                        lead_icon: Icons.email_outlined,
                        color: Colors.indigoAccent,
                        title: 'Email',
                        subTitle: 'E-mail',
                      ),
                      UserListTiles(
                        onTap: () {},
                        lead_icon: Icons.phone,
                        color: Colors.indigoAccent,
                        title: 'Cell',
                        subTitle: 'Phone',
                      ),
                      UserListTiles(
                        onTap: () {},
                        lead_icon: Icons.local_shipping_sharp,
                        color: Colors.indigoAccent,
                        title: 'Address',
                        subTitle: 'Address',
                      ),
                      UserListTiles(
                        onTap: () {},
                        lead_icon: Icons.date_range_outlined,
                        color: Colors.indigoAccent,
                        title: 'Join Date',
                        subTitle: 'Join Date',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _buildFab(),
        ],
      ),
    );
  }

  Widget _buildFab() {
    double defaultMargin = Platform.isIOS ? 270 : 250;
    double scrollStart = 230;
    double scrollEnd = scrollStart / 2;
    double top = defaultMargin;
    double scale = 1.0;
    if (scrollController.hasClients) {
      double offset = scrollController.offset;
      top -= offset;
      if (offset < defaultMargin - scrollStart) {
        scale = 1;
      } else if (offset < defaultMargin - scrollEnd) {
        scale = (defaultMargin - scrollEnd - offset) / scrollEnd;
      } else {
        scale = 0;
      }
    }
    return Positioned(
        top: top,
        right: 20,
        child: Transform(
          transform: Matrix4.identity()..scale(scale),
          alignment: Alignment.center,
          child:
              FloatingActionButton(child: Icon(Icons.camera), onPressed: () {}),
        ));
  }
}
