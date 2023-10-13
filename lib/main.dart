import 'package:bookapp/features/Search/Presentation/views/SearchView.dart';
import 'package:bookapp/features/home/presentation/views/bookDeatailsView.dart';
import 'package:bookapp/features/home/presentation/views/homeView.dart';
import 'package:bookapp/features/splash/presentation/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff202040),
        primaryColor: Color(0xffB030B0),
        primaryColorDark: Color(0xff202060),
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        ),
    GoRoute(
        path: '/home',
        builder: (context, state) {
          return HomeView();
        },
        ),
    GoRoute(
        path: '/details',
        builder: (context, state) {
          return BookDetailsView();
        },
        ),   
            GoRoute(
        path: '/search',
        builder: (context, state) {
          return SearchView();
        },
        ),       
  ],
);
