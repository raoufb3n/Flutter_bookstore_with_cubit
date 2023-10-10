import 'package:bookapp/features/home/presentation/views/widgets/costumListViewItem.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CostumAppBar(),
            CustomListViewItem(),
          ],
        ),
      ),
    );
  }
}




