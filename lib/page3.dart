import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Page3',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black87),
        ),
      ),
    );
  }
}
