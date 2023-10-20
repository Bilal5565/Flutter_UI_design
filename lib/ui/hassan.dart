import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    //double w = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(top: 40, right: 20),
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
              ),
              Icon(
                Icons.lock,
                size: 90,
                color: Colors.pink,
              ),
             
              Expanded(
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.only(top: 30),
                        height: 600,
                        width: 500,
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
                        margin: EdgeInsets.only(top: 105),
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 20,
                        ),
                        height: 600,
                        width: 500,
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
                              height: 10,
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
                              height: 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Mobile Number',
                                labelStyle: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                                hintText: '03XXXXXXXX',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                suffixIcon: Text(
                                  'show',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black54),
                                ),
                                labelStyle: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                                hintText: 'Enter password',
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 60,
                              width: 500,
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
                              height: 30,
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
              ),
            ],
          ),
        ));
  }
}
