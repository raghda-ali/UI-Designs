import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_design/business_logic/cubits/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:ui_design/widgets/bottom_bar_screen/widgets/bottom_bar_widget.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomBarCubit = BlocProvider.of<BottomNavigationBarCubit>(context);
    return BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.blue,
          body: bottomBarCubit.screens[bottomBarCubit.selectedIndex],
          bottomNavigationBar: const BottomBarWidget(),
        );
      },
    );
  }
}
