import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Page 2',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
      ),
    );
  }
}
