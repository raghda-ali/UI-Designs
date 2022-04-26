import 'package:flutter/material.dart';
import 'package:ui_design/data/models/course_model.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/app_bar_widget.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/course_item.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/filter_items.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/popular_course.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/search_text_field.dart';

class OnlineCourses extends StatelessWidget {
  const OnlineCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const AppBarWidget(),
              const SearchTextField(),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: courses.length,
                  itemBuilder: (context, index) => FilterItems(
                    courseName: courses[index].name,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => const CourseItem(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 10, left: 10, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular Course",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Seen all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => const PopularCourse(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
