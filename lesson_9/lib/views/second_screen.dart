import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool toggleOpen = false;
  bool checkBoxOpen = false;
  int selectedGender = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Listtile, checkbox, radio'),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.notification_important_rounded,
                color: Colors.red,
              ),
              title: Text('Notifications'),
              // dense: true,
              isThreeLine: true,
              onTap: () {
                print('hello');
              },
              subtitle: Text('Do you want to turn on notifications or not?'),
              trailing: Switch(
                value: toggleOpen,
                onChanged: (_) {
                  setState(() {
                    toggleOpen = true;
                  });
                },
              ),
            ),
            CheckboxListTile(
              value: checkBoxOpen,
              onChanged: (_) {
                checkBoxOpen = !checkBoxOpen;
                setState(() {});
              },
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('Do you agree to terms and conditions?'),
            ),
            Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RadioListTile(
                      title: Text('Male'),
                      value: 0,
                      onChanged: (_) {
                        setState(() {
                          selectedGender = 0;
                        });
                      },
                      groupValue: selectedGender,
                    ),
                  ],
                ),
              ),
            ),
            RadioListTile(
              value: 1,
              onChanged: (_) {
                setState(() {
                  selectedGender = 1;
                });
              },
              groupValue: selectedGender,
              title: Text('Female'),
            )
          ],
        ),
      ),
    );
  }
}
