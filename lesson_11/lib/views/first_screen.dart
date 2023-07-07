import 'package:flutter/material.dart';
import 'package:lesson_11/views/second_screen.dart';

import '../constants/image_constants.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      print('Hello');
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const SecondScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.network(
        ImageConstants.darazLogo,
        height: 250,
        width: 250,
      ),
    ));
  }
}
