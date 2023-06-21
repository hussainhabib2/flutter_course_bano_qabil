import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  void backendCheck() {
    if (formKey.currentState!.validate() == true) {
      print(emailController.text);
      print(passwordController.text);
      print(nameController.text);
      print('Connecting to backend server');
      print('Backend server is up and running');
      print('Backend server is checking email and pass');
      print('Email password is incorrect');
    }
  }

  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(emailController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning forms & validations'),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (input) {
                    if (input!.isEmpty) {
                      return 'Please enter an email';
                    }
                    if (isValidEmail() == false) {
                      return 'Please enter a valid email';
                    }
                  }),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Phone',
                ),
                validator: (input) {
                  if (input!.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (input.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                },
              ),
              TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                  controller: nameController,
                  validator: (input) {
                    if (input!.isEmpty) {
                      return 'Please enter a name';
                    }
                  }),
              const SizedBox(height: 12),
              ElevatedButton(onPressed: backendCheck, child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
