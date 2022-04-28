import 'package:flutter/material.dart';
import 'package:ui_design/resources.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              color: Colors.black,
              width: 100,
              height: 100,
              child: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 50,
              right: 80,
              child: Container(
                height: 1,
                width: 80,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
