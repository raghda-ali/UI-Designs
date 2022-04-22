import 'package:flutter/material.dart';
import 'package:ui_design/presentation/screens/challenge2/widgets/card_page_view.dart';
import 'package:ui_design/presentation/screens/challenge2/widgets/custom_row_widget.dart';
import 'package:ui_design/widgets/bottom_bar_screen/widgets/bottom_bar_widget.dart';

class BuildSheet extends StatelessWidget {
  const BuildSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: const BottomBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.credit_card),
                    SizedBox(
                      width: 5,
                    ),
                    Text("My Cards"),
                  ],
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.add,
                      ),
                      Text("Add a new card"),
                    ],
                  ),
                ),
              ],
            ),
            const CardPageView(),
            const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Card Setting",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => const CardItem(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
