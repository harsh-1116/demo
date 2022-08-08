
import 'package:flutter/material.dart';

import '../main_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MainScreenWeb(),
    MainScreenWeb(),
    MainScreenWeb(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comman AppBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(


        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              children: const [
                Icon(Icons.home),
                Text("Home")
              ],
            ),
            label: '.',
            tooltip: "Home",

          ),
           BottomNavigationBarItem(
            icon: Column(
              children:  const [
                Icon(Icons.history),
                Text("Home")
              ],
            ),
            label: '.',
              tooltip: "History",
           ),
           BottomNavigationBarItem(
             icon: Column(
               children: const [
                 Icon(Icons.settings),
                 Text("Settings")
               ],
             ),
            label: '.',
            tooltip: 'Settings',

          ),
        ],
        mouseCursor: SystemMouseCursors.move,
        currentIndex: _selectedIndex,
        unselectedLabelStyle: const TextStyle(),
        selectedItemColor: const Color(0xFF22D8AF),
        selectedIconTheme: const IconThemeData(
          color: Color(0xFF22D8AF)
        ),
        elevation: 6,
        selectedLabelStyle: const TextStyle(
          color: Color(0xFF22D8AF),
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        unselectedItemColor: Colors.grey,enableFeedback: false,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,

      ),
    );
  }
}


/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _onItemTappped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: showIndicator(_selectedIndex == 0)),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              title: showIndicator(_selectedIndex == 1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: showIndicator(_selectedIndex == 2)),
        ],
        onTap: _onItemTappped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}

Widget showIndicator(bool show) {
  return show
      ? Padding(
    padding: const EdgeInsets.only(top: 4),
    child: Icon(Icons.brightness_1, size: 10, color: Colors.orange),
  )
      : SizedBox();
}*/
