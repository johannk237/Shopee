import 'package:flutter/material.dart';
import '../common/colors_extension.dart';
import 'detail_view.dart';

class MainHomeView extends StatelessWidget {
  MainHomeView({super.key});

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: EColors.background,
      bottomNavigationBar: const BottomAppBar(
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.lightBlueAccent,
                ),
                SizedBox(
                  height: 3,
                ),
                Text("Home")
              ],
            ),
            Column(
              children: [
                Icon(Icons.add_card_rounded),
                SizedBox(
                  height: 3,
                ),
                Text("Voucher")
              ],
            ),
            Column(
              children: [
                Icon(Icons.wallet),
                SizedBox(
                  height: 3,
                ),
                Text("Wallet")
              ],
            ),
            Column(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  height: 3,
                ),
                Text("Settings")
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/main.jpg"),
                Padding(
                  padding: EdgeInsets.only(top: media.height * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 40,
                                color: Colors.grey,
                              ),
                              hintText: "Search...",
                              hintStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      Badge(
                        label: const Text("1"),
                        child: Image.asset(
                          "assets/icons/shop.png",
                          height: 30,
                          width: 30,
                          color: Colors.grey,
                        ),
                      ),
                      Badge(
                        label: const Text("9+"),
                        child: Image.asset(
                          "assets/icons/chat.png",
                          height: 30,
                          width: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: media.width,
                  height: media.height * 0.09,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset("assets/icons/grid.png"),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text("Category"),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: Icon(
                              Icons.flight,
                              size: 32,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Flight"),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 35,
                              width: 35,
                              child: Icon(
                                Icons.receipt_long,
                                size: 32,
                              )),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Bill"),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 35,
                              width: 35,
                              child: Icon(
                                Icons.data_exploration_outlined,
                                size: 32,
                              )),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Data Plan"),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 35,
                              width: 35,
                              child: Icon(
                                Icons.upcoming_outlined,
                                size: 32,
                              )),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Top Up"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Sale Products",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailView()));
                            },
                            child: Container(
                              height: 265,
                              width: 188,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/polo.jpg",
                                    width: 188,
                                    height: 140,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Shirt",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Essential Men's Short-\nSleeve Crew-neck T-Shirt",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "4.9 | 2336",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "\$12.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.lightBlueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailView()));

                            },
                            child: Container(
                              height: 265,
                              width: 188,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/shoes.jpg",
                                    width: 188,
                                    height: 140,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Shoes",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Essential Men's Shoes",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "4.9 | 2336",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "\$12.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.lightBlueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailView()));
                            },
                            child: Container(
                              height: 265,
                              width: 188,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/polo.jpg",
                                    width: 188,
                                    height: 140,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Shirt",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Essential Men's Short-\nSleeve Crew-neck T-Shirt",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "4.9 | 2336",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "\$12.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.lightBlueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailView()));

                            },
                            child: Container(
                              height: 265,
                              width: 188,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/shoes.jpg",
                                    width: 188,
                                    height: 140,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Shoes",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Essential Men's Shoes",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "4.9 | 2336",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "\$12.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.lightBlueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
