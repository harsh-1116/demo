// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(App());
// }
//
// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(),
//       home: MainPage(),
//     );
//   }
// }
//
//
// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;
//   void _onItemTappped(int value) {
//     setState(() {
//       _selectedIndex = value;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: showIndicator(_selectedIndex == 0)),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.access_alarm),
//               title: showIndicator(_selectedIndex == 1)),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               title: showIndicator(_selectedIndex == 2)),
//         ],
//         onTap: _onItemTappped,
//         currentIndex: _selectedIndex,
//       ),
//     );
//   }
// }
//
// Widget showIndicator(bool show) {
//   return show
//       ? const Padding(
//     padding: EdgeInsets.only(top: 4),
//     child: Icon(Icons.brightness_1, size: 10, color: Colors.orange),
//   )
//       : const SizedBox();
// }
