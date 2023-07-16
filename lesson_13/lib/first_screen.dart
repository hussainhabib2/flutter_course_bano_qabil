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
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.red,
            ),
          ),
          RichText(
            text: TextSpan(
                text: 'I am Hussain',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
                children: [
                  TextSpan(
                    text: ' how are sad asd sad asd asd as dayou doing?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    ),
                  ),
                  TextSpan(
                    text: ' how are sad asd sad asd asd as dayou doing?',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 25,
                    ),
                  ),
                ]),
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
          MyStateful(Colors.red, key: Key('123'),),
        ],
      ),
    );
  }


  dispose() {
    TorchLight.disableTorch();
  }
}


class MyStateful extends StatefulWidget {
  const MyStateful(this.color,{Key? key}) : super(key: key);
  final Color color;
  @override
  State<MyStateful> createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {

  @override
  void initState() {
   print('hello initstate chal gya');
    super.initState();
  }

  @override
  void didChangeDependencies() {
   print('did change dependencies chal gya');
    super.didChangeDependencies();
  }

  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(color: widget.color,height: 100,width: 100,);
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

