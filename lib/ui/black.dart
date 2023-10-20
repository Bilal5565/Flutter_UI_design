import 'package:flutter/material.dart';

import 'package:ui_design/constant/const.dart';

class MyLoginPageUI extends StatelessWidget {
  const MyLoginPageUI({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 37),
      body: SingleChildScrollView(
        child: Column(
          children: [
            topContainer(height: height, width: width),
            loginPage(height: height, width: width),
          ],
        ),
      ),
    );
  }
}

class loginPage extends StatelessWidget {
  const loginPage({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultSize2,
        vertical: defaultSize2,
      ),
      child: Column(
        children: [
          Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultSize3),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Username',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultSize3),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    )),
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultSize3),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    ))),
          ),
          SizedBox(height: defaultSize3),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Password',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultSize3),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    )),
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultSize3),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    ))),
          ),
          SizedBox(height: defaultSize3),
          Container(
            height: height * 0.08,
            width: width,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                defaultSize3,
              ),
            ),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: defaultSize1),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'FORGOT PASSWORD?',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: defaultSize3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "i don't have an account?",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Register',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}

class topContainer extends StatelessWidget {
  const topContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.40,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blueGrey,
            const Color.fromARGB(255, 51, 70, 78),
          ],
        ),
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.elliptical(300, 150),
          bottomStart: Radius.elliptical(300, 150),
        ),
      ),
      child: Center(
          child: Icon(
        Icons.flutter_dash,
        size: 120,
        color: Colors.blue,
      )),
    );
  }
}
