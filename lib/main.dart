import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Screens/home_screen/home_screen.dart';
import 'Screens/main_screen.dart';


void main(){

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd MMM,yyyy');
    final String formatted = formatter.format(now);
    print(formatted); // something like 2013-04-20

    // print("DateTime ---> ${dateTime}");
    // print("day ---> ${dateTime.day}");
    // print("month ---> ${dateTime.month.isFinite}");
    // print("year ---> ${dateTime.year}");
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        primarySwatch: Colors.pink
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavigation(),
    );
  }
}
