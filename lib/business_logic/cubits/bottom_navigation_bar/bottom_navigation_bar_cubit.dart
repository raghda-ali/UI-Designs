import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:ui_design/presentation/screens/challenge1/challenge1.dart';
import 'package:ui_design/presentation/screens/challenge2/challenge2.dart';

part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit() : super(BottomNavigationBarInitial());
  int selectedIndex = 0;
  List<Widget> screens = const [
    Challenge1(),
    Cards(),
    Challenge1(),
    Cards(),
  ];

  void updateIndex(int index) {
    selectedIndex = index;
    emit(UpdateIndex());
  }
}
