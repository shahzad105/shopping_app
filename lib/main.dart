// import 'package:ecommerce_app/screens/login_screen.dart';
import 'package:ecommerce_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ecommerce Shoppings ",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFFEF6969),
        ),
        home: SplashScreen());
  }
}
