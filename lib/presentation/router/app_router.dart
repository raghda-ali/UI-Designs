part of 'router_imports.dart';

class AppRouter {
  AppRouter();

  final navigatorKey = GlobalKey<NavigatorState>();

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.bottomNavigationBar:
        return MaterialPageRoute(
          builder: (_) =>
              MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => PageViewCubit(),
                  ),
                  BlocProvider(create: (create) => BottomNavigationBarCubit()),
                ],
                child: const BottomBarScreen(),
              ),
        );
    }
    return null;
  }
}
