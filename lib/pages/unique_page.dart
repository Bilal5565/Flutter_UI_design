import 'package:flutter/material.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: height * 0.55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(70),
                          topEnd: Radius.circular(70),
                          bottomStart: Radius.elliptical(1000, 250),
                          bottomEnd: Radius.circular(70))),
                  width: width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 55, right: 20, left: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.pink,
                                width: 2,
                              )),
                              hintText: 'EMAIL/MOBILE',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.pink,
                                width: 2,
                              )),
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              prefixIcon: Icon(
                                Icons.mail_outlined,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey.shade700,
                                width: 2,
                              )),
                              hintText: 'PASSWORD',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.pink,
                                width: 2,
                              )),
                              prefixIcon: Icon(
                                Icons.lock_outline_sharp,
                              )),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(
                              'REMEMBER ME',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(
                                  30,
                                )),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Container(
                  height: height * 0.27,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(70),
                          topStart: Radius.circular(70),
                          topEnd: Radius.elliptical(1000, 250),
                          bottomStart: Radius.circular(70))),
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Don't have an Account",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      height: height * 0.07,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(
                            25,
                          )),
                      child: Center(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
