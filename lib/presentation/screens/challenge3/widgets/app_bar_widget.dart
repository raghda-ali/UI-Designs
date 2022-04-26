import 'package:flutter/material.dart';
import 'package:ui_design/resources.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Text(
                "Raghda Ali",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 30,
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
                  size: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage(Resources.person),
              radius: 25,
            ),
          ],
        ),
      ],
    );
  }
}
