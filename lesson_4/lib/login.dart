import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              height: MediaQuery.of(context).size.height * 0.7,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.all(40),
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Email'
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Password'
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text('Forget Password'),
                      ),
                    ),
                    Container(height: 60),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Login"),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text('- OR - '),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                     child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
