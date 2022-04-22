import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_design/business_logic/cubits/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:ui_design/widgets/bottom_bar_screen/widgets/custom_icon_bar_screen.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomBarCubit = BlocProvider.of<BottomNavigationBarCubit>(context);
    return BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
      builder: (context, state) {
        return Container(
          height: 75,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              CustomIconBarScreen(
                index: 0,
                icon: Icons.home,
                bottomNavigationBarCubit: bottomBarCubit,
              ),
              CustomIconBarScreen(
                index: 1,
                icon: Icons.credit_card,
                bottomNavigationBarCubit: bottomBarCubit,
              ),
              CustomIconBarScreen(
                index: 2,
                icon: Icons.file_copy,
                bottomNavigationBarCubit: bottomBarCubit,
              ),
              CustomIconBarScreen(
                index: 3,
                icon: Icons.settings,
                bottomNavigationBarCubit: bottomBarCubit,
              ),
            ],
          ),
        );
      },
    );
  }
}
