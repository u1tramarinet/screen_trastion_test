import 'package:flutter/material.dart';
import 'package:screen_trastion_test/first_screen.dart';
import 'package:screen_trastion_test/top_screen.dart';

class ThirdScreen extends StatefulWidget {
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const ThirdScreen(),
    );
  }

  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
          child: Column(
        children: [
          const Spacer(),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Column(
                children: const [
                  Icon(Icons.navigate_before),
                  Text('Go to preview page.'),
                ],
              )),
          const Spacer(),
          TextButton(
              onPressed: () {
                Navigator.of(context).popUntil(
                  (route) => route.settings.name == FirstScreen.routeName,
                );
              },
              child: Column(
                children: const [
                  Icon(Icons.navigate_before),
                  Text('Go to first page.'),
                ],
              )),
          const Spacer(),
          TextButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Column(
                children: const [
                  Icon(Icons.home),
                  Text('Go to top page.'),
                ],
              )),
          const Spacer(),
        ],
      )),
    );
  }
}
