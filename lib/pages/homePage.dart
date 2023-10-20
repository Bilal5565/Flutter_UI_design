import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: height * 0.65,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: Colors.purple.shade500),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.purple.shade600,
                                  blurRadius: 10,
                                  //spreadRadius: 1,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Colors.purple.shade600,
                                  blurRadius: 10,
                                  //spreadRadius: 1,
                                  offset: Offset(-5, -5)),
                            ],
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.purple.shade300),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey.shade200,
                            size: 25,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.purple.shade600,
                                  blurRadius: 10,
                                  //spreadRadius: 1,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Colors.purple.shade600,
                                  blurRadius: 10,
                                  //spreadRadius: 1,
                                  offset: Offset(-5, -5)),
                            ],
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.purple.shade300),
                        child: Center(
                          child: Icon(
                            Icons.menu,
                            color: Colors.grey.shade200,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'NOW PLAYING',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade200,
                        letterSpacing: 5),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.purple.shade400,
                                  blurRadius: 10,
                                  //spreadRadius: 1,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Colors.purple.shade400,
                                  blurRadius: 10,
                                  //spreadRadius: 1,
                                  offset: Offset(-5, -5)),
                            ],
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey.shade200),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.purple.shade500,
                            size: 25,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 10,
                              color: Colors.grey.shade200,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.shade200,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/img3.jpg'),
                            )),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.purple.shade400,
                                  blurRadius: 10,
                                  //spreadRadius: 1,
                                  offset: Offset(5, 5)),
                              BoxShadow(
                                  color: Colors.purple.shade400,
                                  blurRadius: 10,
                                  //spreadRadius: 1,
                                  offset: Offset(-5, -5)),
                            ],
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey.shade200),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.purple.shade500,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Text(
                    'Take it back',
                    style: TextStyle(
                      letterSpacing: 5,
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Feel very good ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade200,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            //spreadRadius: 1,
                            offset: Offset(2, 2)),
                      ],
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey.shade200),
                  child: Center(
                    child: Icon(
                      Icons.skip_previous,
                      color: Colors.purple.shade500,
                      size: 25,
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            //spreadRadius: 1,
                            offset: Offset(2, 2)),
                      ],
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.grey.shade200),
                  child: Center(
                    child: Icon(
                      Icons.pause,
                      color: Colors.purple.shade500,
                      size: 35,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            //spreadRadius: 1,
                            offset: Offset(2, 2)),
                      ],
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey.shade200),
                  child: Center(
                    child: Icon(
                      Icons.skip_next,
                      color: Colors.purple.shade500,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.80),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1:00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.purple.shade300,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '5:30',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.purple.shade300,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Slider(
                  value: 0.3,
                  onChanged: (value) {},
                  activeColor: Colors.purple.shade500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
