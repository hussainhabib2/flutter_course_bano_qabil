import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HussainApp());
}

class HussainApp extends StatelessWidget {
  const HussainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const FirstScreen(),
        theme: ThemeData(
          textTheme:
              TextTheme(headline1: TextStyle(color: Colors.red, fontSize: 15)),
        ));
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Color mohsinVariable = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mohsinVariable,
      appBar: AppBar(
        title: Text('Hussain'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is hussain 1',
                style: GoogleFonts.cherryCreamSoda(
                    textStyle: TextStyle(
                        color: Colors.blue, letterSpacing: .5, fontSize: 25))),
            Text(
              'This is hussain 1',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'This is hussain 1',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'This is hussain 1',
              style: Theme.of(context).textTheme.headline1,
            ),
            if (mohsinVariable != Colors.blue)
              ElevatedButton(
                  onPressed: () {
                    print('Hello');
                    mohsinVariable = Colors.blue;
                    setState(() {});
                  },
                  child: Text('PRESS ME'))
            else 
              Icon(Icons.call),
          ],
        ),
      ),
    );
  }
}
