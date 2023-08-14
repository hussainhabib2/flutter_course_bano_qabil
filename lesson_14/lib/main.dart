import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  await Hive.initFlutter(); // full app container
  await Hive.openBox('localStorage'); // local storage
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: false,
      ),
      home: const TodoAppHomeScreen(),
    );
  }
}

class TodoAppHomeScreen extends StatefulWidget {
  const TodoAppHomeScreen({Key? key}) : super(key: key);

  @override
  State<TodoAppHomeScreen> createState() => _TodoAppHomeScreenState();
}

class _TodoAppHomeScreenState extends State<TodoAppHomeScreen> {
  List<String> todos = [];
  TextEditingController mycontroller = TextEditingController();

  @override
  void initState() {
    getTodosFromLocalStorage();
    super.initState();
  }

  getTodosFromLocalStorage() async {
    var box = await Hive.openBox('localStorage'); // local storage
    todos = box.get('mytodos') ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('To do')),
      body: Column(
        children: [
          SizedBox(height: 20),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                children: [
                  Flexible(
                      child: TextField(
                    controller: mycontroller,
                  )),
                  ElevatedButton(
                    onPressed: () async {
                      if (mycontroller.text != '') {
                        todos.add(mycontroller.text);
                        var box =
                            await Hive.openBox('localStorage'); // local storage
                        box.put('mytodos', todos);
                        mycontroller.text = '';
                        setState(() {});
                      }
                    },
                    child: Text('Add todo'),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (_, index) {
                return MyCheckboxListTile(todos[index], () async {
                  todos.removeAt(index);
                  var box = await Hive.openBox('localStorage'); // local storage
                  box.put('mytodos', todos);
                  setState(() {});
                });
              },
              shrinkWrap: true,
            ),
          )
        ],
      ),
    );
  }
}

class MyCheckboxListTile extends StatefulWidget {
  final String text;
  final VoidCallback callMe;

  const MyCheckboxListTile(this.text, this.callMe, {Key? key})
      : super(key: key);

  @override
  State<MyCheckboxListTile> createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  bool checkBoxIsOn = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: checkBoxIsOn,
      onChanged: (updatedValue) {
        if (checkBoxIsOn == true) {
          checkBoxIsOn = false;
        } else {
          checkBoxIsOn = true;
          widget.callMe();
        }
        setState(() {});
      },
      title: Text(
        widget.text,
        style: checkBoxIsOn == true
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : const TextStyle(),
      ),
    );
  }
}
