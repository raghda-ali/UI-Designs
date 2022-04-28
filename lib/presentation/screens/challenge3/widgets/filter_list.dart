import 'package:flutter/material.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/checkbox_item.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/clip_widget.dart';

class FilterList extends StatelessWidget {
  final VoidCallback onPressed;

  const FilterList({Key? key, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      right: 30,
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.52,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  5.0,
                  5.0,
                ), //Offset
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filters",
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: onPressed,
                    icon: const Icon(Icons.close),
                    iconSize: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "interests",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) => const CheckBoxItem(
                  title: "Sports",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Advance",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) => const CheckBoxItem(
                  title: "Travelling",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
