import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_design/business_logic/cubits/courses/courses_cubit.dart';
import 'package:ui_design/data/models/course_model.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/filter_items.dart';
import 'package:ui_design/resoures.dart';

class OnlineCourses extends StatelessWidget {
  const OnlineCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courseCubit = BlocProvider.of<CoursesCubit>(context);
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
                    Text(
                      "Welcome",
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
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search any course",
                      fillColor: Colors.grey[50],
                      filled: true,
                      prefixIcon: const Icon(Icons.search_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
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
                      Icons.filter,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: courses.length,
                itemBuilder: (context, index) => FilterItems(
                  courseName: courses[index].name,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
