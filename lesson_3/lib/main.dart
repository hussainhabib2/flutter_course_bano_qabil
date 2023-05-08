import 'package:flutter/material.dart';

void main() {
  runApp(const JamshedApp());
}

class JamshedApp extends StatelessWidget {
  const JamshedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CalculatorScreen());
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Container(
            height: (MediaQuery.of(context).size.height * 0.7) - 80,
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "9",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "8",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "7",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "6",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "*",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "%",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "{}",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "/",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
