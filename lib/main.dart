import "package:flutter/material.dart";
import 'package:test_2/core/store1.dart';
import 'package:test_2/pages/cart_page.dart';
import 'package:test_2/pages/home_page.dart';
import 'package:test_2/pages/login_page.dart';
import 'package:test_2/utils/routes.dart';
import 'package:test_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Mytheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: Mytheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
        MyRoutes.cartRoutes: (context) => Cartpage(),
      },
    );
  }
}
