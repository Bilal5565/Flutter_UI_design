import 'package:flutter/material.dart';

import '../constant/const.dart';
import '../ui/curve.dart';

class AmazingDesign extends StatelessWidget {
  const AmazingDesign({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            curveContainer(height: height, width: width),
            profileImage(height: height, width: width),
            Container(
              margin: EdgeInsets.only(top: height * 0.38, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  welcomeText(),
                  SizedBox(
                    height: 5,
                  ),
                  backText(),
                  SizedBox(
                    height: 25,
                  ),
                  myTextField(),
                  SizedBox(
                    height: 35,
                  ),
                  myTextField2(),
                  sizedBox(),
                  forgotText(),
                  SizedBox(height: height * 0.09),
                  bottomRow()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class sizedBox extends StatelessWidget {
  const sizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
    );
  }
}

class forgotText extends StatelessWidget {
  const forgotText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        'FORGOT PASSWORD',
        style: TextStyle(
            color: orangeColor,
            fontSize: 14,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}

class bottomRow extends StatelessWidget {
  const bottomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => BeautifulDesign()),
            );
          },
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: orangeColor, borderRadius: BorderRadius.circular(40)),
            child: Center(
                child: Icon(
              Icons.arrow_forward,
              size: 30,
              color: Colors.white,
            )),
          ),
        )
      ],
    );
  }
}

class profileImage extends StatelessWidget {
  const profileImage({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height * 0.12,
      left: width * 0.60,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset(
            'images/port.png',
            height: 100,
          )),
    );
  }
}

class curveContainer extends StatelessWidget {
  const curveContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.32,
      width: width,
      margin: EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadiusDirectional.only(
          //topEnd: Radius.elliptical(30, 60),
          bottomEnd: Radius.elliptical(400, 300),
          //bottomStart: Radius.elliptical(200, 100),
        ),
      ),
    );
  }
}

class welcomeText extends StatelessWidget {
  const welcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome ',
      style: TextStyle(
        color: Colors.white,
        letterSpacing: 2,
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class backText extends StatelessWidget {
  const backText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Back!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        letterSpacing: 2,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class myTextField2 extends StatelessWidget {
  const myTextField2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          suffixIcon: Icon(
            Icons.password,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(45),
          ),
          focusColor: orangeColor),
    );
  }
}

class myTextField extends StatelessWidget {
  const myTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'xyz@gmail.com',
        hintStyle: TextStyle(
          fontSize: 16,
          color: orangeColor,
        ),
        suffixIcon: Icon(
          Icons.person_2,
          color: orangeColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
          borderSide: BorderSide(
            color: orangeColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: orangeColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(45),
        ),
      ),
    );
  }
}




//       // borderRadius: BorderRadius.only(
            //       //   topRight: Radius.circular(650),
            //       //   bottomRight: Radius.circular(650),
            //       //   bottomLeft: Radius.circular(650),
            //       // ),
            //       ),
            // ),

            // Positioned(
            //   top: -80,
            //   child: Transform.rotate(
            //     angle: -80.2,
            //     child: Image.asset(
            //       'images/semi.png',
            //       width: 350,
            //     ),
            //   ),
            // ),