import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';
//import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
//import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class WorkOutUiDesign extends StatelessWidget {
  const WorkOutUiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          firstRow(),
          secondRow(),
          topContainer(height: height, width: width),
          cardWidget(height: height, width: width),
          Padding(
            padding: const EdgeInsets.only(
              top: defaultSize2,
              left: defaultSize2 + 3,
            ),
            child: Text(
              'Area of focus',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
          listViewWidget(),
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //     height: defaultSize3 * 2,
      //     color: Colors.deepPurple,
      //     backgroundColor: Colors.white,
      //     items: [
      //       CurvedNavigationBarItem(
      //         child: Icon(Icons.home_outlined, size: 30),
      //       ),
      //       CurvedNavigationBarItem(
      //         child: Icon(
      //           Icons.search,
      //           size: 30,
      //         ),
      //       ),
      //       CurvedNavigationBarItem(
      //         child: Icon(Icons.person_2, size: 30),
      //       ),
      //     ]));
    );
  }
}

class listViewWidget extends StatelessWidget {
  const listViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(defaultSize1),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultSize1 + 5)),
                child: Image.asset('images/workout2.jpeg'),
              ),
              //SizedBox(height: defaultSize2),
              Container(
                padding: EdgeInsets.all(defaultSize1),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultSize1 + 5)),
                child: Image.asset('images/workout2.jpeg'),
              ),
            ],
          ),
          SizedBox(height: defaultSize2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(defaultSize1),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultSize1 + 5)),
                child: Image.asset('images/workout2.jpeg'),
              ),
              //SizedBox(height: defaultSize2),
              Container(
                padding: EdgeInsets.all(defaultSize1),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultSize1 + 5)),
                child: Image.asset('images/workout2.jpeg'),
              ),
            ],
          ),
          SizedBox(height: defaultSize2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(defaultSize1),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultSize1 + 5)),
                child: Image.asset('images/workout2.jpeg'),
              ),
              //SizedBox(height: defaultSize2),
              Container(
                padding: EdgeInsets.all(defaultSize1),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultSize1 + 5)),
                child: Image.asset('images/workout2.jpeg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class cardWidget extends StatelessWidget {
  const cardWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultSize2 + 3),
      padding: EdgeInsets.symmetric(
        vertical: defaultSize1 + 5,
        horizontal: defaultSize1,
      ),
      height: height * 0.13,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defaultSize1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(defaultSize1),
            child: Image.asset(
              'images/workout1.jpeg',
              height: 100,
            ),
          ),
          SizedBox(
            width: defaultSize1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You are doing great',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: defaultSize1 / 2,
              ),
              Text(
                'Keep it up',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'and stick to your plan!',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class topContainer extends StatelessWidget {
  const topContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: defaultSize2,
        horizontal: defaultSize2,
      ),
      height: height * 0.30,
      width: width,
      margin: EdgeInsets.symmetric(
        vertical: defaultSize2,
        horizontal: defaultSize2 + 3,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple.shade600,
            Colors.deepPurple.shade400,
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize1),
          topRight: Radius.circular(defaultSize3 * 2.3),
          bottomLeft: Radius.circular(defaultSize1),
          bottomRight: Radius.circular(
            defaultSize1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next workout',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultSize1),
          Text(
            'Weight Taking',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'and Glutes Workout',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultSize2,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Icon(
                Icons.play_arrow,
                size: 28,
                color: Colors.deepPurple,
              )),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.alarm,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: defaultSize1 / 2,
              ),
              Text(
                '68 min',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class secondRow extends StatelessWidget {
  const secondRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 30,
          right: 20,
          left: 20,
        ),
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your program',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                'Details',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward,
                size: 22,
                color: Colors.grey.shade700,
              )
            ]));
  }
}

class firstRow extends StatelessWidget {
  const firstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        right: 20,
        left: 20,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'WorkOut',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.grey.shade700,
                size: 22,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.calendar_month,
                color: Colors.grey.shade700,
                size: 22,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                '29 April',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 22,
                color: Colors.grey.shade700,
              )
            ],
          ),
        ],
      ),
    );
  }
}
