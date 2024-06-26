import 'package:flipkart_ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'navigation_page.dart';



void main() {

    // Add these 2 lines

  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Navigation_Page(),
    );
  }
}
