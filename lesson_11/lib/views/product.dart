import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        children: [
          const SizedBox(width: 10),
          const Text(
            'IPhone XS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          if (counter == 0)
            IconButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                )),
          if (counter > 0)
            Row(children: [
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  )),
              const SizedBox(width: 10),
              Text(
                '$counter',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ])
        ],
      ),
    );
  }
}
