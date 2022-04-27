import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_design/business_logic/cubits/courses/courses_cubit.dart';
import 'package:ui_design/business_logic/cubits/page_view/page_view_cubit.dart';
import 'package:ui_design/business_logic/utility/app_bloc_observer.dart';
import 'package:ui_design/presentation/router/router_imports.dart';
import 'package:ui_design/presentation/screens/challenge4/challenge4.dart';
import 'package:ui_design/widgets/bottom_bar_screen/bottom_bar_screen.dart';

import 'business_logic/cubits/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(
        DevicePreview(enabled: true, builder: (context) => const MyApp())),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter? appRouter;

  const MyApp({Key? key, this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageViewCubit(),
        ),
        BlocProvider(create: (create) => BottomNavigationBarCubit()),
        BlocProvider(create: (create) => CoursesCubit()),
      ],
      child: MaterialApp(
        onGenerateRoute: appRouter?.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ChallengeFour(),
      ),
    );
  }
}
