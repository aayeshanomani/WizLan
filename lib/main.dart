import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _textValue = "";

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.orange[300],
        buttonColor: Colors.orange[400]
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'WizLan'
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: ListView(
              children: <Widget>[
                Text(
                  _textValue
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
