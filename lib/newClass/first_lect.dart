import 'package:flutter/material.dart';

class FirstLec extends StatefulWidget {
  FirstLec({super.key});

  @override
  State<FirstLec> createState() => _FirstLecState();
}

class _FirstLecState extends State<FirstLec> {
  double textSize = 16;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: textSize,
            color: textColor,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: myFunction,
            // onPressed: () {
            //   setState(() {
            //     textColor = Colors.red;
            //     textSize++;
            //   });
            // },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                textSize--;
                textColor = Colors.blue;
              });
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
    // return Container(child: Center(child: Text('Hello world')));
  }

  void myFunction() {
    setState(() {
      textColor = Colors.red;
      textSize++;
    });
  }

  // int myFunction1(){
  //   return 0;
  // }

  // String myFunction3() {
  //   return "Flutter";
  // }
}
