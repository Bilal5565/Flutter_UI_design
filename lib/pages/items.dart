import 'package:flutter/material.dart';
import 'package:ui_design/constant/const.dart';

class CoffeeItems extends StatelessWidget {
  const CoffeeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            myContainer(),
            Container(
              padding: EdgeInsets.all(defaultSize2 / 1.5),
              height: 265,
              width: 170,
              decoration: BoxDecoration(
                color: appColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('images/copy.jpg')),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Text(
                      'Special coffee',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1 / 1.3,
                    ),
                    Text(
                      'Dark pieces',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$5.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: defaultSize2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(defaultSize2 / 1.5),
              height: 265,
              width: 170,
              decoration: BoxDecoration(
                color: appColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('images/copy.jpg')),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Text(
                      'Special coffee',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1 / 1.3,
                    ),
                    Text(
                      'Dark pieces',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$5.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(defaultSize2 / 1.5),
              height: 265,
              width: 170,
              decoration: BoxDecoration(
                color: appColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('images/copy.jpg')),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Text(
                      'Special coffee',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1 / 1.3,
                    ),
                    Text(
                      'Dark pieces',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$5.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}

class myContainer extends StatelessWidget {
  const myContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultSize2 / 1.5),
      height: 265,
      width: 170,
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('images/copy.jpg')),
            SizedBox(
              height: defaultSize1,
            ),
            Text(
              'Special coffee',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: defaultSize1 / 1.3,
            ),
            Text(
              'Dark pieces',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: defaultSize1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$5.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
