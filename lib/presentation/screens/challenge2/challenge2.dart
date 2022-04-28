import 'package:flutter/material.dart';
import 'package:ui_design/presentation/screens/challenge2/widgets/build_sheet.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.white,
              constraints: BoxConstraints.loose(
                Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height * 0.83,
                ),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(35),
                ),
              ),
              // enableDrag: true,
              context: context,
              builder: (context) => const BuildSheet());
        },
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
                child: Text(
              "My Cards",
              textAlign: TextAlign.center,
            )),
          ),
        ),
      ),
    );
  }
}
