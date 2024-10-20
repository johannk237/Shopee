import 'package:flutter/material.dart';

import '../common/colors_extension.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EColors.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
                const Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.share,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Badge(
                      label: Text("1"),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              "assets/images/polo.jpg",
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(Icons.on_device_training_sharp, color: Colors.grey),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Tokobaju.id",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Essential Men's Short-Sleeve \nCrew-neck T-Shirt",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Text(
                  "4.9 Ratings",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  "2.4k Reviews",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text("-",
                    style: TextStyle(
                      fontSize: 30,
                    )),
                Text(
                  "2.9k Sold",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  "About Items",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Reviews",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "Band:",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "ChAmkpR",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Color:",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "ApriKot",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "Total Price",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "\$18.00",
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 70,
                      decoration: const BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          )),
                      child: const Center(
                        child: Badge(
                          label: Text("1"),
                          child: Icon(
                            Icons.shopping_basket_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: const Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
