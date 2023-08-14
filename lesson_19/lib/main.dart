import 'package:flutter/material.dart';
import 'package:lesson_19/providers/first_screen_provider.dart';
import 'package:provider/provider.dart';

import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
          providers: [
            Provider<FirstScreenProvider>(create: (_) => FirstScreenProvider()),
          ],
          child: FirstScreen()),
    );
  }
}

stf