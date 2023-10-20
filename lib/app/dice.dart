import 'dart:math';

import 'package:flutter/material.dart';

class MyDiceApp extends StatefulWidget {
  const MyDiceApp({super.key});

  @override
  State<MyDiceApp> createState() => _MyDiceAppState();
}

class _MyDiceAppState extends State<MyDiceApp> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 1, 77),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/dice_$currentDiceRoll.png'),
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.brown),
              onPressed: rollDice,
              child: Text(
                'Roll Dice',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class dice_1 extends StatelessWidget {
//   const dice_1({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       height: 150,
//       width: 150,
//       decoration: BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black,
//               blurRadius: 5,
//               spreadRadius: 3,
//               offset: Offset(0, 3),
//             )
//           ]),
//       child: Center(
//         child: Container(
//           height: 30,
//           width: 30,
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(25)),
//         ),
//       ),
//     );
//   }
// }

// class dice_2 extends StatelessWidget {
//   const dice_2({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       height: 150,
//       width: 150,
//       decoration: BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black,
//               blurRadius: 5,
//               spreadRadius: 3,
//               offset: Offset(0, 3),
//             )
//           ]),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               height: 30,
//               width: 30,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(25)),
//             ),
//           ),
//           SizedBox(
//             height: 67,
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: Container(
//               height: 30,
//               width: 30,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(25)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class dice_3 extends StatelessWidget {
//   const dice_3({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       height: 150,
//       width: 150,
//       decoration: BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black,
//               blurRadius: 5,
//               spreadRadius: 3,
//               offset: Offset(0, 3),
//             )
//           ]),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               height: 30,
//               width: 30,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(25)),
//             ),
//           ),
//           SizedBox(
//             height: 18,
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               height: 30,
//               width: 30,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(25)),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: Container(
//               height: 30,
//               width: 30,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(25)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class dice_4 extends StatelessWidget {
//   const dice_4({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       height: 150,
//       width: 150,
//       decoration: BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black,
//               blurRadius: 5,
//               spreadRadius: 3,
//               offset: Offset(0, 3),
//             )
//           ]),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 60,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class dice_5 extends StatelessWidget {
//   const dice_5({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       height: 150,
//       width: 150,
//       decoration: BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black,
//               blurRadius: 5,
//               spreadRadius: 3,
//               offset: Offset(0, 3),
//             )
//           ]),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class dice_6 extends StatelessWidget {
//   const dice_6({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       height: 150,
//       width: 150,
//       decoration: BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black,
//               blurRadius: 5,
//               spreadRadius: 3,
//               offset: Offset(0, 3),
//             )
//           ]),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25)),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
