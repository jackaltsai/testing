import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Testing'),
        ),
        body: const SafeArea(
          child: MyHomePage(title: 'Testing'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final String _text = loremIpsum(words: 60);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      child: Row(
        children: [
          const Icon(Icons.circle),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              _text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 5),
          const Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }
}
