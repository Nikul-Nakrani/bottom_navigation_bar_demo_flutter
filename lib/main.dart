import 'package:bottom_navigation_bar_demo/page1.dart';
import 'package:bottom_navigation_bar_demo/page2.dart';
import 'package:bottom_navigation_bar_demo/page3.dart';
import 'package:bottom_navigation_bar_demo/page4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 65,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.white,
              enableFeedback: false,
              backgroundColor: Colors.green,
              currentIndex: currentIndex,
              onTap: onTapped,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home_filled,
                    size: 30,
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.work_rounded,
                    size: 30,
                  ),
                  icon: Icon(
                    Icons.work_outline_outlined,
                    size: 30,
                  ),
                  label: 'Work',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.widgets_rounded,
                    size: 30,
                  ),
                  icon: Icon(Icons.widgets_outlined, size: 30),
                  label: 'Widgets',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  icon: Icon(
                    Icons.person_outline,
                    size: 30,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
