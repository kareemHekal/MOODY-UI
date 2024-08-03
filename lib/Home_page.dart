import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/tabs/account_tab.dart';
import 'package:test2/tabs/home_tab.dart';
import 'package:test2/tabs/squars_tab.dart';
import 'package:test2/tabs/timelines_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> pages = [HomeTab(), Squares_tab(), Timeline(), AccountTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset("assets/logo.png"),
        ),
        title: Image.asset("assets/Moody.png"),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset("assets/bell-02.png"))
        ],
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          selectedItemColor: Colors.green,
          selectedLabelStyle: TextStyle(fontSize:20,color: Colors.green),
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/Icon.png"), label: "__"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/grid-01.png"), label: "__"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/calendar.png"), label: "__"),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey,), label: "."),
          ]),
    );
  }
}
