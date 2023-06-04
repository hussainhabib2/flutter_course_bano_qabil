import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text(
          "Filters",
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.check,color: Colors.white),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(height: 20),
          Text('Adjust your meal selection!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(height: 30),
          ReusableWidget(
            title: 'Gluten-Free',
            description: 'Only include Gluten-Free meals',
          ),
          ReusableWidget(
            title: 'Lactose-Free',
            description: 'Only include Lactose-Free meals',
          ),
          ReusableWidget(
            title: 'Vegetarian',
            description: 'Only include Vegetarian meals',
          ),
          ReusableWidget(
            title: 'Vegan',
            description: 'Only include Vegan meals',
          ),
        ],
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  const ReusableWidget(
      {required this.title, required this.description, Key? key})
      : super(key: key);
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.black38, fontSize: 14),
                  ),
                ],
              ),
              Switch(
                value: true,
                activeColor: Colors.pinkAccent,
                onChanged: (value) {},
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
