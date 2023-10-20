import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

class MyMusicDesign extends StatelessWidget {
  const MyMusicDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
        children: [
          topRow(),
          imageWidget(),
          SizedBox(
            height: defaultSize3,
          ),
          Text(
            'Lose it',
            style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                letterSpacing: 2),
          ),
          SizedBox(
            height: defaultSize1,
          ),
          Text(
            'Good Feel wonderful moment',
            style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 2),
          ),
          SizedBox(
            height: defaultSize2 * 2.5,
          ),
          durationWidget(),
          mySlider(),
          SizedBox(
            height: defaultSize2 * 1.8,
          ),
          myButtons(),
        ],
      ),
    );
  }
}

class myButtons extends StatelessWidget {
  const myButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: Offset(5, 5),
              ),
              BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: Offset(-5, -5),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.skip_previous,
              color: Colors.white70,
            ),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: Offset(5, 5),
              ),
              BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: Offset(-5, -5),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.pause,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: Offset(5, 5),
              ),
              BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: Offset(-5, -5),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.skip_next,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}

class mySlider extends StatelessWidget {
  const mySlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      inactiveColor: Colors.grey.shade700,
      activeColor: Colors.pinkAccent,
      value: 0.4,
      onChanged: (value) {},
    );
  }
}

class durationWidget extends StatelessWidget {
  const durationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: defaultSize3, left: defaultSize3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1:30',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            '5:00',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class imageWidget extends StatelessWidget {
  const imageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 15.0,
            spreadRadius: 1.0,
            offset: Offset(5, 5),
          ),
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 15.0,
            spreadRadius: 1.0,
            offset: Offset(-5, -5),
          ),
        ],
        border: Border.all(color: Colors.grey.shade800, width: 12),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'images/img3.jpg',
          ),
        ),
      ),
    );
  }
}

class topRow extends StatelessWidget {
  const topRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: defaultSize3 + 10,
        horizontal: defaultSize2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade900,
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                  offset: Offset(5, 5),
                ),
                BoxShadow(
                  color: Colors.grey.shade900,
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                  offset: Offset(-5, -5),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white70,
              ),
            ),
          ),
          Text(
            'PLAYING NOW',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 3),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade900,
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                  offset: Offset(5, 5),
                ),
                BoxShadow(
                  color: Colors.grey.shade900,
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                  offset: Offset(-5, -5),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.menu,
                color: Colors.white70,
              ),
            ),
          )
        ],
      ),
    );
  }
}
