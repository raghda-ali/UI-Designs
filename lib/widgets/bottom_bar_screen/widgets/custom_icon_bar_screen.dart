import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_design/business_logic/cubits/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';

class CustomIconBarScreen extends StatelessWidget {
  final int index;
  final Color? iconColor;
  final double? fontSize;
  final IconData? icon;
  final BottomNavigationBarCubit bottomNavigationBarCubit;

  const CustomIconBarScreen({
    Key? key,
    required this.index,
    this.fontSize,
    this.icon,
    this.iconColor,
    required this.bottomNavigationBarCubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomBarCubit = BlocProvider.of<BottomNavigationBarCubit>(context);
    return IconButton(
      onPressed: () {
        bottomBarCubit.updateIndex(index);
      },
      icon: Icon(
        icon ?? Icons.home_outlined,
        color: bottomNavigationBarCubit.selectedIndex == index
            ? Colors.blue
            : iconColor ?? Colors.grey,
        size: fontSize ?? 27,
      ),
    );
  }
}
