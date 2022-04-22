import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'page_view_state.dart';

class PageViewCubit extends Cubit<PageViewState> {
  PageViewCubit() : super(PageViewInitial());
  final PageController pageController = PageController();
  int selectedIndex = 0;
  bool isSwitched =false;


  void changeIndex(int index) {
    if (index < selectedIndex) {
      pageController.jumpToPage(selectedIndex-1);
    }else{
      pageController.jumpToPage(selectedIndex+1);
    }
    selectedIndex = index;
    emit(PageViewChangeIndex());
  }

  void switchButton(){
    isSwitched = !isSwitched;
    emit(SwitchButtonSuccess());
  }
}
