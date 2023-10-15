import 'package:bookapp/core/utils/serviceLocator.dart';
import 'package:bookapp/features/Search/Presentation/views/SearchView.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/features/home/data/repos/homeRepoImple.dart';
import 'package:bookapp/features/home/presentation/view_models/NewestBooksCubit/newest_books_cubit_cubit.dart';
import 'package:bookapp/features/home/presentation/view_models/featuredBooksCubit/featurebooks_cubit.dart';
import 'package:bookapp/features/home/presentation/views/bookDeatailsView.dart';
import 'package:bookapp/features/home/presentation/views/homeView.dart';
import 'package:bookapp/features/splash/presentation/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  steupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestBooksCubitCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) => FeaturebooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff202040),
        ),
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
        return BookDetailsView(book: state.extra as BookModel,);
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
