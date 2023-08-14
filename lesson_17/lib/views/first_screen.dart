import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Example'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                FirebaseFirestore firestore = FirebaseFirestore.instance;
                CollectionReference usersCollection =
                    firestore.collection('users');
                usersCollection
                    .add({
                      'full_name': "Ubaid", // John Doe
                      'company': "Bano Qabil", // Stokes and Sons
                      'age': 23,
                      'photos': [
                        'myphoto.jpg',
                        'myphoto2.jpg',
                        'myphoto3.jpg',
                      ]
                    })
                    .then((value) => print("User Added"))
                    .catchError((error) => print("Failed to add user: $error"));
              },
              child: Text('Signup'),
            ),
            ElevatedButton(
              onPressed: () async {
                FirebaseFirestore firestore = FirebaseFirestore.instance;
                CollectionReference usersCollection =
                    firestore.collection('users');
                QuerySnapshot querySnapshot = await usersCollection.get();
                final allData =
                    querySnapshot.docs.map((doc) => doc.data()).toList();
                print(allData);
              },
              child: const Text('Get all users'),
            ),
            ElevatedButton(
              onPressed: () async {
                FilePickerResult? result = await FilePicker.platform.pickFiles();
                Random random = Random();
                int randomNumber = random.nextInt(100000000);
                if (result != null) {
                  File file = File(result.files.single.path!);
                  final FirebaseStorage _storage = FirebaseStorage.instanceFor(
                      bucket: 'gs://lesson17-b8092.appspot.com');
                  final Reference _imagesRef = _storage.ref().child(randomNumber.toString());
                  _imagesRef.putFile(file);
                } else {
                  // User canceled the picker
                }
              },
              child: const Text('Upload a file'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get a file'),
            )
          ],
        ),
      ),
    );
  }
}
