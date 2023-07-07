import 'package:flutter/material.dart';
import 'package:lesson_10/constants/image_constants.dart';
import 'package:lesson_10/constants/text_constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clipboard/clipboard.dart';
import 'package:share_plus/share_plus.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  final String quote = 'Growth itself contains the germ of happiness';
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
                const HussainText(
                  'Pearl Buck',
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          FlutterClipboard.copy(quote).then(( value ) {
                            print('copied');
                            // show snackbar
                            showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                title: Text('Copied'),
                                content:
                                Text('Quote copied to clipboard'),
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
