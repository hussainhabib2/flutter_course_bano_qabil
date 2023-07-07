import 'package:flutter/material.dart';
import 'package:lesson_11/views/product.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Product(),
            const SizedBox(height: 10),
            Product(),
            const SizedBox(height: 10),
            Product(),
          ],
        ),
      )
    );
  }
}
