import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_design/business_logic/cubits/courses/courses_cubit.dart';

class FilterItems extends StatelessWidget {
  final String courseName;

  const FilterItems({
    Key? key,
    required this.courseName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courseCubit = BlocProvider.of<CoursesCubit>(context);
    return Row(
      children: [
        BlocBuilder<CoursesCubit, CoursesState>(
          builder: (context, state) {
            return FilterChip(
              label: Text(
                courseName,
                style:  TextStyle(
                  color: courseCubit.isSelected == false ? Colors.grey[400] : Colors.white,
                ),
              ),
              checkmarkColor: Colors.white,
              selected: courseCubit.isSelected,
              backgroundColor: Colors.white,
              selectedColor: Colors.green,
              shape: const StadiumBorder(side: BorderSide(color: Colors.grey)),
              onSelected: (v) {
                courseCubit.selectCourse();
              },
            );
          },
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
