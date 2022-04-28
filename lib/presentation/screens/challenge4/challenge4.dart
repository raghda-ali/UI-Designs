import 'package:flutter/material.dart';
import 'package:ui_design/resources.dart';

class ChallengeFour extends StatelessWidget {
  const ChallengeFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chairs",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.indigo[100],
        actions: [
          IconButton(
            onPressed: () {},
            iconSize: 30,
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.indigo[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.48,
                width: MediaQuery.of(context).size.width * 0.8,
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const SizedBox(
                      width: 150,
                      child: Text(
                        "Wooden Armchair",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 29,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "\$100.00",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.indigo[100],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Solid wooden furniture products hand carved by artisans...",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -180,
                left: MediaQuery.of(context).size.width * 0.1,
                child: Image(
                  image: const AssetImage(Resources.chair),
                  width: MediaQuery.of(context).size.width * 0.62,
                  height: MediaQuery.of(context).size.height * 0.48,
                  // fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      color: Colors.black,
                      width: 70,
                      height: 65,
                      child: const Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 35,
                      right: 55,
                      child: Container(
                        height: 1,
                        width: 55,
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
