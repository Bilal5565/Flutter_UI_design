import 'package:flutter/material.dart';
//import 'package:ui_design/design/cliper.dart';

//import 'app/amazing.dart';
//import 'newClass/first_lect.dart';
//import 'ui/black.dart';
//import 'ui/modern.dart';
import 'ui/modern_ui2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ModernUi2(),
    );
  }
}
