import 'package:ecommerce_using_firebase/provider/theme_data.dart';
import 'package:ecommerce_using_firebase/screens/bottom_navigation_screen.dart';
import 'package:ecommerce_using_firebase/screens/cart_page.dart';
import 'package:ecommerce_using_firebase/screens/feed_page.dart';
import 'package:ecommerce_using_firebase/screens/home_page.dart';
import 'package:ecommerce_using_firebase/screens/search_page.dart';
import 'package:ecommerce_using_firebase/screens/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => ThemeNotifier())],
      child: Consumer<ThemeNotifier>(builder: (context, notifier, _) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyaAppTheme.myThemes(notifier.isDark, context),
            home: const BottomNavigationScreen(),
            routes: {
              HomeScreen.routeName: (ctx) => const HomeScreen(),
              FeedScreen.routeName: (ctx) => const FeedScreen(),
              SearchScreen.routeName: (ctx) => const SearchScreen(),
              CartSceen.routeName: (ctx) => const CartSceen(),
              UserProfileScreen.routeName: (ctx) => const UserProfileScreen(),
              BottomNavigationScreen.routeName: (ctx) =>
                  const BottomNavigationScreen(),
            });
      }),
    );
  }
}
