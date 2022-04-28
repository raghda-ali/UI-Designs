import 'package:flutter/material.dart';

class CheckBoxItem extends StatelessWidget {
  final String title;

  const CheckBoxItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Column(
      children: [
        Row(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: Colors.grey[400],
              ),
              child: SizedBox(
                height: 30,
                width: 25,
                child: Checkbox(
                  value: isChecked,
                  // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  activeColor: Colors.blue[900],
                  checkColor: Colors.white,
                  onChanged: (value) {},
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 17.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
