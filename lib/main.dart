import 'package:flutter/material.dart';
import 'package:rent_house_app/Screens/bar1_page.dart';

import 'package:rent_house_app/Screens/login_page.dart';

import 'Screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/home": (BuildContext context) => const HomePage(),
          "/": (BuildContext context) => const UserLogin(),
        });
  }
}
