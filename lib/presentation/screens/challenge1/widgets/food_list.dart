import 'package:flutter/material.dart';
import 'package:ui_design/data/models/food_model.dart';
import 'package:ui_design/presentation/screens/challenge1/widgets/food_item.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: food.length,
        itemBuilder: (BuildContext context, int index) {
          return  FoodItem(
            image: food[index].image,
            title: food[index].title,
            subTitle: food[index].subTitle,
            price: food[index].price,
          );
        });
  }
}
