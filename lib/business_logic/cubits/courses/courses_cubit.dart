
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesInitial());
  bool isSelected = false;

  void selectCourse() {
    isSelected = !isSelected;
    print(isSelected);
    emit(ChangeFilteredCourses());
  }
}
