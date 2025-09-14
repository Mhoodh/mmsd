import 'package:flutter/material.dart';

import 'package:laringfarstapp/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffildkay = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      routes: {"home": (context) => Homepage()},
    );
  }
}
