import 'package:flutter/material.dart';
import 'package:shoes_shopping_ui_flutter/Components/categories.dart';
import 'package:shoes_shopping_ui_flutter/Components/make_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            "Shoes",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 55,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      categoreis(text: "All", selected: true),
                      categoreis(text: "Sneakers", selected: false),
                      categoreis(text: "Football", selected: false),
                      categoreis(text: "Soccer", selected: false),
                      categoreis(text: "Golf", selected: false),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                makeItem(
                    image: "assets/images/one.jpg",
                    tag: 'red',
                    context: context),
                makeItem(
                    image: "assets/images/two.jpg",
                    tag: 'blue',
                    context: context),
                makeItem(
                    image: "assets/images/three.jpg",
                    tag: 'white',
                    context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
