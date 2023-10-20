import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

// ignore: must_be_immutable
class UserUi extends StatelessWidget {
  UserUi({super.key});
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 25, 44),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            firstClipper(height: height),
            mainContainer(width: width, height: height),
            secondCliper(height: height),
          ],
        ),
      ),
    );
  }
}

class secondCliper extends StatelessWidget {
  const secondCliper({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(reverse: true),
      child: Container(
        width: double.infinity,
        height: height * 0.20,
        color: Colors.pink,
      ),
    );
  }
}

class mainContainer extends StatelessWidget {
  const mainContainer({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 40,
      ),
      width: width,
      height: height * 0.50,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Icon(
                  Icons.person_2,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.pink,
                      width: 2.0,
                    ))),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.pink,
                  width: 2.0,
                )),
          )),
          SizedBox(
            height: height * 0.085,
          ),
          Container(
            alignment: Alignment.center,
            height: height * 0.085,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.pink, width: 2.0)),
            child: Text(
              'LOGIN ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class firstClipper extends StatelessWidget {
  const firstClipper({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        alignment: Alignment.center,
        height: height * 0.30,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.pink),
        child: Icon(
          Icons.flutter_dash,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
