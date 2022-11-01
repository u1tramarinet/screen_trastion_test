import 'package:flutter/material.dart';
import 'package:screen_trastion_test/first_screen.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({super.key});

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Screen'),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: double.infinity,
        child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                FirstScreen.route(),
              );
            },
            child: Column(
              children: const [
                Icon(Icons.navigate_next),
                Text('Go to next page.'),
              ],
            )),
      ),
    );
  }
}
