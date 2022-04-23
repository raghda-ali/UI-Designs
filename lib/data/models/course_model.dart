class CourseModel {
  final String name;

  // final bool isSelected;

  CourseModel({
    required this.name,
    // required this.isSelected,
  });
}

List<CourseModel> courses = [
  CourseModel(name: "All courses", ),
      // isSelected: true),
  CourseModel(name: "Coding ",),
      // isSelected: false),
  CourseModel(name: "Design",),
      // isSelected: false),
  CourseModel(name: "Business", ),
      // isSelected: false),
  CourseModel(name: "3D", ),
      // isSelected: false),
  CourseModel(name: "Design",),
      // isSelected: false),
];
