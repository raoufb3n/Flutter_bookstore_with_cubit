import 'package:bookapp/core/utils/serviceLocator.dart';
import 'package:bookapp/features/home/data/repos/homeRepo.dart';
import 'package:bookapp/features/home/data/repos/homeRepoImple.dart';
import 'package:bookapp/features/home/presentation/views/widgets/homeViewBody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}
