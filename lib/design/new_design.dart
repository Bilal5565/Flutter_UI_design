import 'package:flutter/material.dart';

class MyNewDesign extends StatefulWidget {
  const MyNewDesign({super.key});

  @override
  State<MyNewDesign> createState() => _MyNewDesignState();
}

class _MyNewDesignState extends State<MyNewDesign> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              height: height * 0.70,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.purple.shade300,
                      Colors.purple.shade500,
                    ]),
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.elliptical(400, 200),
                  bottomEnd: Radius.elliptical(
                    150,
                    40,
                  ),
                ),
              ),
              child: Form(
                key: formKey,
                child: Column(children: [
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      letterSpacing: 3,
                      color: Colors.grey.shade100,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: width * 0.88,
                    height: height * 0.070,
                    color: Colors.purple.shade200,
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: width * 0.88,
                    height: height * 0.070,
                    color: Colors.purple.shade200,
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        print('hello');
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.065,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                      fontSize: 17,
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              'or signup with',
              style: TextStyle(
                wordSpacing: 2,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade700,
                fontSize: 17,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/go.png',
                    width: 30,
                  ),
                  Image.asset(
                    'images/face.png',
                    width: 35,
                  ),
                  Image.asset(
                    'images/insta.png',
                    width: 40,
                  ),
                  Image.asset(
                    'images/twi.png',
                    width: 35,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
