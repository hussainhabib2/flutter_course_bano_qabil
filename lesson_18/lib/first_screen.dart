import 'package:flutter/material.dart';
import 'package:lesson_19/providers/first_screen_provider.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FirstScreenProvider(),

      child: Scaffold(
        body: Column(
          children: [
            TextFormField(),
            TextFormField(),
            Consumer<FirstScreenProvider>(builder: (context, provider, child)  {
             return provider.isTap == true
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                       provider.changeIsTap();
                      },
                      child: Text('Tap me'));
            }),
          ],
        ),
      ),
    );
  }
}
