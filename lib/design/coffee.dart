import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

import '../pages/items.dart';

class CoffeeApp extends StatefulWidget {
  const CoffeeApp({super.key});

  @override
  State<CoffeeApp> createState() => _CoffeeAppState();
}

class _CoffeeAppState extends State<CoffeeApp> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: appColor2,
        body: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultSize3 * 1.3, horizontal: defaultSize3 / 1.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myRow(),
              SizedBox(
                height: defaultSize3,
              ),
              myTexts(),
              SizedBox(
                height: defaultSize3,
              ),
              myTextField(),
              SizedBox(
                height: defaultSize3,
              ),
              myTabBar(),
              SizedBox(
                height: defaultSize2 / 1.5,
              ),
              Flexible(
                  flex: 2,
                  child: TabBarView(children: [
                    CoffeeItems(),
                    CoffeeItems(),
                    CoffeeItems(),
                    CoffeeItems(),
                  ]))
            ],
          ),
        ),
        bottomNavigationBar: myBottomNavigationBar(),
      ),
    );
  }

  Widget myTextField() {
    return Container(
      height: height * 0.065,
      width: width,
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.circular(
          defaultSize1,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade400,
            ),
            hintText: 'Search your Coffee',
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
            )),
      ),
    );
  }

  Widget myTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Great coffee',
          style: TextStyle(
            wordSpacing: 2,
            letterSpacing: 2,
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'anytime anywhere!',
          style: TextStyle(
            wordSpacing: 2,
            letterSpacing: 2,
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class myTabBar extends StatelessWidget {
  const myTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelStyle: TextStyle(fontSize: 18),
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 3,
            color: Colors.orange,
          ),
        ),
      ),
      tabs: [
        Tab(
          text: 'Cappuccino',
        ),
        Tab(
          text: 'Cold Brew',
        ),
        Tab(
          text: 'Starbucks',
        ),
        Tab(
          text: 'Cappuccino',
        ),
      ],
    );
  }
}

class myBottomNavigationBar extends StatelessWidget {
  const myBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedItemColor: appColor,
        selectedItemColor: Colors.orange,
        showUnselectedLabels: false,
        iconSize: 26,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              backgroundColor: appColor2,
              icon: Icon(Icons.home_filled, size: 28),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none, size: 28),
              label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 28), label: 'Profile'),
        ]);
  }
}

class myRow extends StatelessWidget {
  const myRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: appColor,
              borderRadius: BorderRadius.circular(
                15,
              )),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey.shade300,
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: appColor,
              borderRadius: BorderRadius.circular(
                15,
              )),
          child: Icon(
            Icons.notifications_none_outlined,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
