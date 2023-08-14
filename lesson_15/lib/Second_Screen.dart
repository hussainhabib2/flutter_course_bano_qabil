import 'dart:async';

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String currentText = "";
  List<String> text2 = ["Welcome", "to", "my", "app", "Welcome to my app"];
  int index = 0;

  @override
  void initState() {
    currentText = text2[index];
    Timer.periodic(const Duration(seconds: 2), (timer) {
      index = index + 1;
      currentText = text2[index];
      setState(() {

      });
      if(index == text2.length - 1){
        timer.cancel();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(currentText),
      ),
    );
  }
}
