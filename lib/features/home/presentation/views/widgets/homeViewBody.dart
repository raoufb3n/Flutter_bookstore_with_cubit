import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/presentation/views/widgets/NewesetListView.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/featuredListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostumAppBar(),
                FeaturedBokksListView(),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Newest:',
                  style: Styles.displayLarge,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: NewestListView(),
          )
        ],
      ),
    );
  }
}
