import 'package:flutter/material.dart';

class UIDesign extends StatelessWidget {
  const UIDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5d19b),
      body: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Image(
                image: AssetImage("assets/images/music.png"),
                fit: BoxFit.contain,
                height: 150,
                width: 150,
              ),
            ),
            const SizedBox(height: 100,),
            const Text(
              "Music of the 90s",
              style: TextStyle(
                color: Color(0xff183d4d),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15,),
            const Text(
              "Playlists with the best tracks of the 90s especially for you",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                color: const Color(0xffde5d4d),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
