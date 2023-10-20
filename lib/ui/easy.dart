import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class EasyWidget extends StatelessWidget {
  const EasyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(232, 92, 190, 95),
          toolbarHeight: height * 0.12,
          leading: Padding(
            padding: const EdgeInsets.only(left: 13),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/port.png'),
            ),
          ),
          centerTitle: true,
          title: Text('easypaisa',
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey.shade200,
                fontWeight: FontWeight.w600,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Icon(
                Icons.search,
                color: Colors.grey.shade200,
                size: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.grey.shade200,
                size: 26,
              ),
            ),
          ],
        ),
        body: ListView(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
              height: height * 0.30,
              width: width,
              decoration: BoxDecoration(
                color: Color.fromARGB(232, 92, 190, 95),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                height: height * 0.20,
                width: width * 0.10,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('easypaisa',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('BILAL KHAN',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('03499257234',
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w600,
                              )),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.05,
                            width: width * 0.32,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(232, 92, 190, 95),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Sign in to your easypaisa account',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w400,
                          )),
                    ]),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: height * 0.17,
                      width: width * 0.27,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.money,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 40,
                          ),
                          Text('Send Money',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      )),
                  Container(
                      height: height * 0.17,
                      width: width * 0.27,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.mobile_screen_share_sharp,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 40,
                          ),
                          Text('Bill Payment',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      )),
                  Container(
                      height: height * 0.17,
                      width: width * 0.27,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.mobile_friendly_outlined,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 40,
                          ),
                          Text('Packages',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Text('More with easypaisa',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            Container(
              height: height * 0.60,
              width: width,
              padding: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 25,
              ),
              margin: EdgeInsets.only(
                top: 13,
                right: 12,
                left: 12,
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.install_mobile,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Easyload',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.money,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Easycash loan',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.castle_sharp,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('M-Tag',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.person_add_alt,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Invite & Earn',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.install_mobile,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Easyload',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.money,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Easycash loan',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.castle_sharp,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('M-Tag',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.person_add_alt,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Invite & Earn',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.install_mobile,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Easyload',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.money,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Easycash loan',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.castle_sharp,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('M-Tag',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.person_add_alt,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Invite & Earn',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.install_mobile,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Easyload',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.money,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Easycash loan',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.castle_sharp,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('M-Tag',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.person_add_alt,
                            color: Color.fromARGB(232, 92, 190, 95),
                            size: 30,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text('Invite & Earn',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
