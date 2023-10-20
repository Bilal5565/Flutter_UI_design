// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

class FoodPageDesign extends StatelessWidget {
  FoodPageDesign({super.key});
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topIcon(),
            topText(),
            size(),
            MyListView(),
            bigText(),
            mainFood(height: height, width: width),
            orderButton(height: height, width: width),
          ],
        ),
      ),
    );
  }
}

class size extends StatelessWidget {
  const size({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: defaultSize3,
    );
  }
}

class topIcon extends StatelessWidget {
  const topIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: defaultSize2 * 2,
        right: defaultSize2 - 5,
        left: defaultSize2 - 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back),
          Icon(Icons.sort),
        ],
      ),
    );
  }
}

class topText extends StatelessWidget {
  const topText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultSize3 + 10,
      ),
      child: Column(
        children: [
          Text(
            'Food Menu',
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepOrange,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Choose your best food have a great day',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.1,
            ),
          ),
        ],
      ),
    );
  }
}

class orderButton extends StatelessWidget {
  const orderButton({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: defaultSize2, horizontal: defaultSize3),
      child: Container(
          height: height * 0.07,
          width: width,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(
              defaultSize2 - 5,
            ),
          ),
          child: Center(
            child: Text(
              'Order Now',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          )),
    );
  }
}

class mainFood extends StatelessWidget {
  const mainFood({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: defaultSize1,
        left: defaultSize2,
        right: defaultSize2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //for (int i = 0; i <= 5; i++)
          Container(
            height: height * 0.27,
            width: width * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.deepOrange,
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      'NEW',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/png.jpg',
                    width: 130,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height * 0.27,
            width: width * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.deepOrange,
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      'NEW',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/png.jpg',
                    width: 130,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class bigText extends StatelessWidget {
  const bigText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'More',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _PageViewState();
}

class _PageViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height * 0.30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.only(
                  right: defaultSize1 / 2,
                  left: defaultSize1 / 2,
                ),
                height: height * 0.33,
                width: width * 0.35,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepOrange,
                    width: 6,
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'images/bir.jpg',
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(
                    defaultSize2 + 3,
                  ),
                ),
              );
            })));
  }
}
