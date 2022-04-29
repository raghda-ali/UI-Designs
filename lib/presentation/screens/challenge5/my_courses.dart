import 'package:flutter/material.dart';
import 'package:ui_design/presentation/screens/challenge5/widgets/custom_row_widget.dart';
import 'package:ui_design/resources.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Column(
          children: [
            const Text(
              "My Courses",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "12 Courses",
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) => const CustomRowWidget(
                  title: "HTML & CSS",
                  image: Resources.coding,
                  subTitle: "Samanta yasmin",
                )),
      ),
    );
  }
}
