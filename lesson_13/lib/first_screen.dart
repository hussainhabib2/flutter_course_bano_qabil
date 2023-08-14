import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 13"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Learning ClipRRect',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            Text(
              'Learning RichText',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            RichText(
              text: const TextSpan(
                  text: 'I am Hussain',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: ' how are you doing?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: ' Damn, this looks good!',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                      ),
                    ),
                  ]),
            ),
            Text(
              'Adding Flashlight/Torch Package',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await TorchLight.enableTorch();
                } on Exception catch (_) {
                  // Handle error
                }
              },
              child: Text('Open Torch'),
            ),
            Text(
              'Learning Widget Lifecycle',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            MyStateful(
              Colors.red,
              key: Key('123'),
            ),
          ],
        ),
      ),
    );
  }

  dispose() {
    TorchLight.disableTorch();
  }
}

class MyStateful extends StatefulWidget {
  const MyStateful(this.color, {Key? key}) : super(key: key);
  final Color color;

  @override
  State<MyStateful> createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  @override
  void initState() {
    print('hello initstate executed');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('did change dependencies executed');
    super.didChangeDependencies();
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      height: 100,
      width: 100,
    );
  }

  @override
  void didUpdateWidget(covariant MyStateful oldWidget) {
    print("old widget: " + oldWidget.color.toString());
    print("new widget: " + widget.color.toString());
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
