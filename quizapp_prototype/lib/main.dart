import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: const Text('Quiz App'),
      backgroundColor: Colors.red,
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.red),
        home: Scaffold(appBar: appBar, body: Home()));
  }
}
