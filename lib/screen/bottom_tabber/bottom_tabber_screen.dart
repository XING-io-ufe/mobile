import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/home/home_screen.dart';
import 'package:flutter_application_2/screen/profile/profile_screen.dart';
import 'package:flutter_application_2/theme/io_colors.dart';
// import 'package:flutter_application_2/screen/tournament/tournament_detail_screen.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProfileScreen(),
    // TournamentDetailPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.sports_esports),
          //   label: 'Tournament',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: IOColors.icon500,
        onTap: _onItemTapped,
      ),
    );
  }
}
