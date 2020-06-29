import 'package:flo/screens/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  /// This widget is the root of your application.
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Animated Text Kit',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Intro()
        // MyHomePage(title: 'Animated Text Kit'),
        );
  }
}
