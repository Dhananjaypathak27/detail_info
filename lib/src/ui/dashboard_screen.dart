import 'package:detail_info/src/ui/movie_screen.dart';
import 'package:detail_info/src/ui/series_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    MovieScreen(),
    SeriesScreen()
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: "Movie"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_fill),
              label: "video"
          ),

        ],
      ),
    );
  }
}
