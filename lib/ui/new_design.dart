import 'package:flutter/material.dart';

class NewDesignApp extends StatelessWidget {
  const NewDesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'images/login.png',
        ),
        fit: BoxFit.cover,
      ),),
    );
  }
}
