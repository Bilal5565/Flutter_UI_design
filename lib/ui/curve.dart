import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

class BeautifulDesign extends StatefulWidget {
  const BeautifulDesign({super.key});

  @override
  State<BeautifulDesign> createState() => _BeautifulDesignState();
}

class _BeautifulDesignState extends State<BeautifulDesign> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: defaultSize3 * 1.5, left: defaultSize2, right: defaultSize2),
          child: mainColumn(h: h, w: w),
        ),
      ),
    );
  }
}

class mainColumn extends StatelessWidget {
  const mainColumn({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w600, letterSpacing: 2),
        ),
        SizedBox(
          height: defaultSize1,
        ),
        Text(
          'Login back into your account account',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
        SizedBox(
          height: defaultSize2,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: EdgeInsets.only(top: defaultSize3 + 8),
              height: h * 0.60,
              width: w,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 88, 91, 253),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75),
                      topRight: Radius.circular(75),
                      bottomRight: Radius.circular(75),
                      bottomLeft: Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: defaultSize3 * 1.7,
                  horizontal: defaultSize2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize2,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        )),
                        // border: OutlineInputBorder(

                        // ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.grey.shade300,
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 20,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: defaultSize2 - 5,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        )),
                        prefixIcon:
                            Icon(Icons.lock, color: Colors.grey.shade300),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 20,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: defaultSize2,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: defaultSize2),
                        height: h * 0.08,
                        width: w * 0.80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                            child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            profileWidget(w: w),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultSize2, horizontal: defaultSize3),
          child: Row(
            children: [
              Text(
                "Don't have an account yet?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Join Now',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 96, 98, 252),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class profileWidget extends StatelessWidget {
  const profileWidget({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: w * 0.60,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            border: Border.all(color: Colors.black45, width: 2),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
                topLeft: Radius.circular(3)),
            image: DecorationImage(
              image: AssetImage(
                'images/port.png',
              ),
            )),
      ),
    );
  }
}
