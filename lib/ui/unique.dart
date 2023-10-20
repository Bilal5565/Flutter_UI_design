import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';


class UniqueDesign extends StatefulWidget {
  UniqueDesign({super.key});

  @override
  State<UniqueDesign> createState() => _UniqueDesignState();
}

class _UniqueDesignState extends State<UniqueDesign> {
  int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined, size: 35),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.search,
              size: 35,
            ),
            label: 'Search',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat_bubble_outline, size: 35),
            label: 'Chat',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.newspaper, size: 35),
            label: 'Feed',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity, size: 35),
            label: 'Personal',
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 5.0),
              ElevatedButton(
                child: Text('Go To Page of index 1'),
                onPressed: () {
                  // Page change using state does the same as clicking index 1 navigation button
                  final CurvedNavigationBarState? navBarState =
                      _bottomNavigationKey.currentState;
                  navBarState?.setPage(1);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
