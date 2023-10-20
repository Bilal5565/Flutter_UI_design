// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

class ModernUiPage extends StatelessWidget {
  ModernUiPage({super.key});
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            mainContainer(height: height, width: width),
            Form(
                child: Padding(
              padding: const EdgeInsets.only(right: 40, left: 40, top: 35),
              child: myTextField(height: height, width: width),
            ))
          ],
        ),
      ),
    );
  }
}

class mainContainer extends StatelessWidget {
  const mainContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.45,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              secondaryColor,
              primaryColor,
            ]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(defaultSize3 * 4),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.flutter_dash_outlined,
            color: Colors.white,
            size: defaultSize3 * 4,
          ),
          SizedBox(
            height: defaultSize2 * 4,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class myTextField extends StatelessWidget {
  const myTextField({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: height * 0.07,
            width: width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                defaultSize2,
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.mail)),
            )),
        SizedBox(
          height: 25,
        ),
        Container(
          height: height * 0.07,
          width: width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(0, 2),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              defaultSize2,
            ),
          ),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.key)),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.12,
        ),
        loginButton(height: height, width: width),
        SizedBox(
          height: defaultSize3,
        ),
        bottomText(),
      ],
    );
  }
}

class loginButton extends StatelessWidget {
  const loginButton({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 255, 94, 0),
              Colors.orangeAccent,
            ]),
        borderRadius: BorderRadius.circular(defaultSize2),
      ),
      child: Center(
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}

class bottomText extends StatelessWidget {
  const bottomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account ?",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        Text(
          'Register',
          style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
