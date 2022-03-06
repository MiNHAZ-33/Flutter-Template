import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int currentIndexs = 0;

  final List<Widget> screens = [
    Center(
      child: Text('I am at home now'),
    ),
    Center(
      child: Text('I am at chats now'),
    ),
    Center(
      child: Text('I am at profile now'),
    ),
    Center(
      child: Text('I am at settings now'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndexs,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndexs,
          onTap: (index) => setState(
                () {
                  currentIndexs = index;
                },
              ),
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
