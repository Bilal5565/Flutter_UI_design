import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

class StunningUiDesign extends StatelessWidget {
  const StunningUiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          backgroundContainer(),
          topIcon(h: h),
          bodyContainer(h: h, w: w),
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
    return Positioned(
      top: h * 0.15,
      right: 0,
      left: 0,
      child: Column(
        children: [
          Icon(
            Icons.fitness_center,
            size: 50,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'FITNESS CLUB',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: h * 0.20,
          ),
          Text(
            'Welcome Back',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultSize2,
          ),
          Container(
            height: h * 0.075,
            width: w * 0.83,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Text(
                'SIGN IN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: defaultSize2,
          ),
          Container(
            height: h * 0.075,
            width: w * 0.83,
            decoration: BoxDecoration(
                //
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.15,
          ),
          Text(
            'Login with Social Media',
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          ),
          SizedBox(
            height: defaultSize1 / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/twi.png',
                height: 35,
              ),
              SizedBox(
                width: defaultSize1,
              ),
              Image.asset(
                'images/insta.png',
                height: 40,
              ),
              SizedBox(
                width: defaultSize1,
              ),
              Image.asset(
                'images/face.png',
                height: 35,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class topIcon extends StatelessWidget {
  const topIcon({
    super.key,
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: h * 0.05,
        right: defaultSize2,
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}

class backgroundContainer extends StatelessWidget {
  const backgroundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 133, 11, 2),
              Color.fromARGB(255, 16, 0, 19),
            ]),
      ),
    );
  }
}
