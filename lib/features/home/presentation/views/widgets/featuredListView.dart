import 'package:bookapp/features/home/presentation/views/widgets/costumListViewItem.dart';
import 'package:flutter/material.dart';

class FeaturedBokksListView extends StatelessWidget {
  const FeaturedBokksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: CustomListViewItem(),
                )));
  }
}
