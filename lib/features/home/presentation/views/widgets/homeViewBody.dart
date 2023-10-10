import 'package:bookapp/features/home/presentation/views/widgets/costumListViewItem.dart';
import 'package:bookapp/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CostumAppBar(),
              FeaturedBokksListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedBokksListView extends StatelessWidget {
  const FeaturedBokksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: CustomListViewItem(),
                )));
  }
}
