import 'package:flutter/material.dart';
import 'package:lesson_9/views/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), (){
      var newRoute = MaterialPageRoute(builder: (_) => SecondScreen());
      Navigator.push(context, newRoute);
    });
    return Scaffold(
      body: Center(
          child: Image.asset(
            'assets/soundcloud.png',
            height: 200,
            width: 200,
          )),
    );
  }
}
