import 'package:flutter/material.dart';
import 'package:ui_design/resoures.dart';

class OnlineCourses extends StatelessWidget {
  const OnlineCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Welcome",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Raghda Ali",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey[300]!,
                          )),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          size: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(Resources.pizza),
                      radius: 30,
                    ),
                  ],
                )
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search any course",
                      fillColor: Colors.red,
                      prefixIcon: const Icon(Icons.search_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[300]!,
                      )),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
