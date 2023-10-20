import 'package:flutter/material.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pink.shade300,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            height: height * 0.70,
            width: width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(0, 2))
              ],
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(4, 4)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4)),
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey.shade200,
                          Colors.grey.shade300,
                          Colors.grey.shade400,
                          Colors.grey.shade500,
                        ],
                        stops: [
                          0.1,
                          0.3,
                          0.8,
                          0.9,
                        ])),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.pink.shade400,
                    size: 80,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7),
                width: width * 0.9,
                height: height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15,
                          offset: Offset(5, 5)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          offset: Offset(-5, -5)),
                    ]),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade300,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              blurRadius: 15,
                              offset: Offset(5, 5)),
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 15,
                              offset: Offset(-5, -5)),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Username',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7),
                width: width * 0.9,
                height: height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15,
                          offset: Offset(5, 5)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          offset: Offset(-5, -5)),
                    ]),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade300,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              blurRadius: 15,
                              offset: Offset(5, 5)),
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 15,
                              offset: Offset(-5, -5)),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Container(
                alignment: Alignment.center,
                width: width * 0.9,
                height: height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.pink.shade400,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15,
                          offset: Offset(5, 5)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          offset: Offset(-5, -5)),
                    ]),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 15,
                            offset: Offset(5, 5)),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 15,
                            offset: Offset(-5, -5)),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.pink.shade400,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    'Forgot your password?',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
