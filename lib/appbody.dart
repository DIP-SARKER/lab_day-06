import 'package:flutter/material.dart';
// import 'package:icons_plus/icons_plus.dart';

class Appbody extends StatefulWidget {
  const Appbody({super.key});

  @override
  State<Appbody> createState() => _AppbodyState();
}

class _AppbodyState extends State<Appbody> {
  int currentIndex = 0;
  final List<Widget> pages = [
    Text("Home"),
    Text("Exit"),
  ];

  void onTapMethod(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTapMethod,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app),
              label: "Exit",
            ),
          ]),
    );
  }
}
