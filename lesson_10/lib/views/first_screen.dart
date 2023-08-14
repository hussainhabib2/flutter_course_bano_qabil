import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lesson_10/constants/image_constants.dart';
import 'package:lesson_10/constants/text_constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clipboard/clipboard.dart';
// import 'package:lesson_10/models/post_api_model.dart';
import 'package:lesson_10/models/quotes_api_response_model.dart';
import 'package:share_plus/share_plus.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String quote = 'Fetching a motivational quote for you';
  String author = 'Quotter';

  final dio = Dio();

  @override
  void initState() {
    getHttp();
    // postHttp();
    super.initState();
  }
  //
  // postHttp() async {
  //   final response = await dio.post('https://dummyjson.com/products/add',
  //       data: {'title': "My Product"});
  //   print(response.statusCode);
  //   if (response.statusCode == 200) {
  //     print(response.data);
  //     PostAPIModel obj = PostAPIModel.fromJson(response.data);
  //     print(obj.title);
  //   } else {
  //     print('API not working');
  //   }
  // }

  void getHttp() async {
    final response = await dio.get('https://dummyjson.com/quotes');
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.data);
      QuotesAPIModel obj = QuotesAPIModel.fromJson(response.data);
      print(obj.total);
      var numberGenerator = Random();
      int randomNumber = numberGenerator.nextInt(30);
      quote = obj.quotes![randomNumber].quote!;
      author = obj.quotes![randomNumber].author!;
      setState(() {});
    } else {
      print('API not working');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //image
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              ImageConstants.backgroundPicture,
              fit: BoxFit.cover,
            ),
          ),
          //column
          SafeArea(
            child: Column(
              children: [
                const HussainText('Quotter'),
                const Spacer(),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '" ',
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: quote,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(
                        text: ' "',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                HussainText(author),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          getHttp();
                        },
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          FlutterClipboard.copy(quote).then((value) {
                            print('copied');
                            // show snackbar
                            showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                title: Text('Copied'),
                                content: Text('Quote copied to clipboard'),
                              ),
                            );
                          });
                        },
                        icon: const Icon(
                          Icons.copy,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          // share
                          Share.share(quote);
                        },
                        icon: const Icon(
                          Icons.share,
                          color: Colors.white,
                        )),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
