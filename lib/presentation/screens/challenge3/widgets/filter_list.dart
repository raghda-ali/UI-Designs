import 'package:flutter/material.dart';

class FilterList extends StatelessWidget {
  const FilterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Positioned(
      top: 170,
      right: 30,
      child: Material(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width * 0.52,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
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
              Text(
                "Filters",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "interests",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) => Row(
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.grey[400],
                      ),
                      child: Checkbox(
                        value: isChecked,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                        activeColor: Colors.blue[900],
                        checkColor: Colors.white,
                        onChanged: (value) {},
                      ),
                    ),
                    const Text(
                      'Sports',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                      ),
                    ), //Text
                  ],
                ),
              ),
              const Text(
                "Advance",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) => Row(
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.grey[400],
                      ),
                      child: Checkbox(
                        value: isChecked,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                        activeColor: Colors.blue[900],
                        checkColor: Colors.white,
                        onChanged: (value) {},
                      ),
                    ),
                    const Text(
                      'Engineering',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                      ),
                    ), //Text
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
