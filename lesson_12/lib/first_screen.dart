import 'package:flutter/material.dart';
import 'package:lesson_12/app_text.dart';
import 'package:lesson_12/data/backend_data.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f1014),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const AppText('E - Shop', fontSize: 40, fontWeight: FontWeight.bold),
              const SizedBox(height: 10),
              const AppText('Trending Products', fontSize: 25),
              const SizedBox(height: 20),
              ListView.builder(
                  itemCount: productsList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.network(
                        productsList[index].picture ?? '',
                        height: 140,
                        width: 140,
                        errorBuilder: (context, error, stackTrace) {
                          return const AppText('No image');
                        }
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(productsList[index].name ?? 'Product Name', fontWeight: FontWeight.bold),
                          const SizedBox(height: 5),
                          AppText(
                            productsList[index].desc ?? 'No description',
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              AppText('\$${productsList[index].price}' ?? '0.0'),
                              const SizedBox(width: 50),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff6e3fc9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 8),
                                child: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
