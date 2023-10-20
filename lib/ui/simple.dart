import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

class SimpleUiDesign extends StatelessWidget {
  const SimpleUiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          mainContainer(height: height, width: width),
          secondaryContainer(height: height, width: width),
          loginButton(height: height, width: width),
          textWidget(),
        ],
      ),
    );
  }
}

class textWidget extends StatelessWidget {
  const textWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -40,
        // right: 40,
        left: 140,
        child: Text(
          'FORGOT PASSWORD?',
          style: TextStyle(
              color: Colors.black87, fontSize: 14, fontWeight: FontWeight.w600),
        ));
  }
}

class loginButton extends StatelessWidget {
  const loginButton({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: height * 0.80,
        left: 60,
        right: 60,
      ),
      height: height * 0.083,
      width: width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.deepPurple,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
                color:
                    const Color.fromARGB(255, 163, 111, 253).withOpacity(0.5),
                blurRadius: 3,
                spreadRadius: 2,
                offset: Offset(0, 1))
          ],
          borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: Text('LOGIN',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500))),
    );
  }
}

class secondaryContainer extends StatelessWidget {
  const secondaryContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          top: height * 0.40,
          right: 30,
          left: 30,
        ),
        height: height * 0.45,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset: Offset(0, 1))
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: defaultSize1, horizontal: defaultSize2),
          child: Column(
            children: [
              Text('LOGIN',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: defaultSize2,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 131, 62, 252),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: defaultSize3,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 131, 62, 252),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class mainContainer extends StatelessWidget {
  const mainContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.45,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.deepPurple,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Icon(
                Icons.home,
                size: 60,
                color: Colors.deepPurple,
              ),
            )),
      ),
    );
  }
}
