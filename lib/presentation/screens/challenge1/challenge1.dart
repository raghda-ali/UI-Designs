import 'package:flutter/material.dart';
import 'package:ui_design/presentation/screens/challenge1/widgets/food_list.dart';

class Challenge1 extends StatelessWidget {
  const Challenge1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.pink[200],
            tabs: const [
              Tab(text: "Featured Items"),
              Tab(text: "Burger"),
            ],
          ),
          backgroundColor: Colors.grey[200],
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
              color: Colors.black,
            ),
          ],
        ),
        body: const TabBarView(
          children: <Widget>[
            FoodList(),
            FoodList(),
          ],
        ),
      ),
    );
  }
}
