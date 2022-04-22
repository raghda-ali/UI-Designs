class FoodModel {
  final String image;
  final String title;
  final String subTitle;
  final String price;

  FoodModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}

List<FoodModel> food = [
  FoodModel(
    image: "assets/images/chicken.jpg",
    title: 'Peri Peri Pizza',
    subTitle: "Peri peri chicken, mushroom, black olive, capsicum",
    price: "EGP 80",
  ),
  FoodModel(
    image: "assets/images/Pizza.jpg",
    title: 'Mexican Pizza',
    subTitle: "Peri peri chicken, mushroom, black olive, capsicum",
    price: "EGP 80",
  ),
  FoodModel(
    image: "assets/images/chicken.jpg",
    title: 'Chicken wings',
    subTitle: "Peri peri chicken, mushroom, black olive, capsicum",
    price: "EGP 90",
  ),
  FoodModel(
    image: "assets/images/Pizza.jpg",
    title: 'Peri Peri Pizza',
    subTitle: "Peri peri chicken, mushroom, black olive, capsicum",
    price: "EGP 100",
  ),
];
