import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

class MyLoginUi extends StatefulWidget {
  const MyLoginUi({super.key});

  @override
  State<MyLoginUi> createState() => _MyLoginUiState();
}

class _MyLoginUiState extends State<MyLoginUi> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          topIcon(),
          Icon(
            Icons.lock,
            size: 90,
            color: Colors.pink,
          ),
          SizedBox(
            height: defaultSize2,
          ),
          bodyContainer(h: h, w: w)
        ],
      ),
    );
  }
}

class bodyContainer extends StatelessWidget {
  const bodyContainer({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: defaultSize3),
              height: h,
              width: w,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: h * 0.13),
              padding: EdgeInsets.symmetric(
                vertical: defaultSize3,
                horizontal: defaultSize2,
              ),
              height: h,
              width: w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome back',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      )),
                  SizedBox(
                    height: defaultSize1,
                  ),
                  Text(
                    'Sign in with your account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: defaultSize2,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      labelStyle:
                          TextStyle(fontSize: 18, color: Colors.black54),
                      hintText: '03XXXXXXXX',
                    ),
                  ),
                  SizedBox(
                    height: defaultSize2,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Text(
                        'show',
                        style: TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                      labelStyle:
                          TextStyle(fontSize: 18, color: Colors.black54),
                      hintText: 'Enter password',
                    ),
                  ),
                  SizedBox(
                    height: defaultSize3,
                  ),
                  Container(
                    height: h * 0.085,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: defaultSize3,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class topIcon extends StatelessWidget {
  const topIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin:
            EdgeInsets.only(top: defaultSize2 * 2, right: defaultSize2),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Icon(
            Icons.settings_outlined,
            color: Colors.white,
            size: 26,
          ),
        ),
      ),
    );
  }
}
