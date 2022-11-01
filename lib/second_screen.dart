import 'package:flutter/material.dart';
import 'package:screen_trastion_test/third_screen.dart';

class SecondScreen extends StatefulWidget {
  static String routeName = 'second';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SecondScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
          child: Column(
        children: [
          const Spacer(),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  ThirdScreen.route(),
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
