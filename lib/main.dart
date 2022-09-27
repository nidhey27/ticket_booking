import 'package:flutter/material.dart';
import 'package:nidhey/utils/app_styles.dart';
import 'components/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primaryColor: primary,
      ),
      home: const BottomBar(),
    );
  }
}
