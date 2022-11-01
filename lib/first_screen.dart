import 'package:flutter/material.dart';
import 'package:screen_trastion_test/second_screen.dart';

class FirstScreen extends StatefulWidget {
  static String routeName = 'first';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const FirstScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
          child: Column(
        children: [
          const Spacer(),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  SecondScreen.route(),
                );
              },
              child: Column(
                children: const [
                  Icon(Icons.navigate_next),
                  Text('Go to next page.'),
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
